; ModuleID = 'samples/750.bc'
source_filename = "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/mod_userdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_plugin_keys_t = type { ptr, i8, i8, i8 }
%struct.plugin = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.plugin_data = type { i32, i32, ptr, ptr, %struct.plugin_config, %struct.plugin_config, [2 x i64], [2 x %struct.buffer], [2 x %struct.buffer] }
%struct.plugin_config = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.buffer = type { ptr, i32, i32 }
%struct.request_st = type { i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.request_config, i32, i64, %struct.array, %struct.request_uri, %struct.physical, %struct.array, i64, i64, i64, ptr, ptr, %struct.buffer, %struct.buffer, %struct.buffer, %struct.buffer, i32, i64, %struct.array, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i64, i64, %struct.timespec, i32, i32, %struct.chunkqueue, %struct.chunkqueue, %struct.chunkqueue, ptr, i32, i32 }
%struct.request_config = type { ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i16, i16, i24, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.request_uri = type { %struct.buffer, %struct.buffer, %struct.buffer, %struct.buffer }
%struct.physical = type { %struct.buffer, %struct.buffer, %struct.buffer, %struct.buffer }
%struct.array = type { ptr, ptr, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.chunkqueue = type { ptr, ptr, i64, i64, ptr, i64, i32 }
%struct.config_plugin_value = type { i32, i32, %union.v_u }
%union.v_u = type { ptr }
%struct.data_string = type { %struct.buffer, ptr, i32, i32, %struct.buffer }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"userdir\00", align 1, !dbg !0
@log_monotonic_secs = external global i64, align 8
@mod_userdir_set_defaults.cpk = internal constant [7 x %struct.config_plugin_keys_t] [%struct.config_plugin_keys_t { ptr @.str.1, i8 12, i8 1, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.2, i8 20, i8 9, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.3, i8 20, i8 9, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.4, i8 16, i8 1, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.5, i8 19, i8 4, i8 2 }, %struct.config_plugin_keys_t { ptr @.str.6, i8 14, i8 4, i8 2 }, %struct.config_plugin_keys_t zeroinitializer], align 16, !dbg !7
@.str.1 = private unnamed_addr constant [13 x i8] c"userdir.path\00", align 1, !dbg !222
@.str.2 = private unnamed_addr constant [21 x i8] c"userdir.exclude-user\00", align 1, !dbg !227
@.str.3 = private unnamed_addr constant [21 x i8] c"userdir.include-user\00", align 1, !dbg !232
@.str.4 = private unnamed_addr constant [17 x i8] c"userdir.basepath\00", align 1, !dbg !234
@.str.5 = private unnamed_addr constant [20 x i8] c"userdir.letterhomes\00", align 1, !dbg !239
@.str.6 = private unnamed_addr constant [15 x i8] c"userdir.active\00", align 1, !dbg !244
@.str.7 = private unnamed_addr constant [12 x i8] c"mod_userdir\00", align 1, !dbg !249

; Function Attrs: cold nounwind optsize uwtable
define i32 @mod_userdir_plugin_init(ptr noundef %p) #0 !dbg !625 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !630, metadata !DIExpression()), !dbg !635
  %0 = load ptr, ptr %p.addr, align 8, !dbg !636, !tbaa !631
  %version = getelementptr inbounds %struct.plugin, ptr %0, i32 0, i32 23, !dbg !637
  store i64 66665, ptr %version, align 8, !dbg !638, !tbaa !639
  %1 = load ptr, ptr %p.addr, align 8, !dbg !642, !tbaa !631
  %name = getelementptr inbounds %struct.plugin, ptr %1, i32 0, i32 22, !dbg !643
  store ptr @.str, ptr %name, align 8, !dbg !644, !tbaa !645
  %2 = load ptr, ptr %p.addr, align 8, !dbg !646, !tbaa !631
  %init = getelementptr inbounds %struct.plugin, ptr %2, i32 0, i32 17, !dbg !647
  store ptr @mod_userdir_init, ptr %init, align 8, !dbg !648, !tbaa !649
  %3 = load ptr, ptr %p.addr, align 8, !dbg !650, !tbaa !631
  %cleanup = getelementptr inbounds %struct.plugin, ptr %3, i32 0, i32 21, !dbg !651
  store ptr @mod_userdir_free, ptr %cleanup, align 8, !dbg !652, !tbaa !653
  %4 = load ptr, ptr %p.addr, align 8, !dbg !654, !tbaa !631
  %handle_physical = getelementptr inbounds %struct.plugin, ptr %4, i32 0, i32 4, !dbg !655
  store ptr @mod_userdir_docroot_handler, ptr %handle_physical, align 8, !dbg !656, !tbaa !657
  %5 = load ptr, ptr %p.addr, align 8, !dbg !658, !tbaa !631
  %set_defaults = getelementptr inbounds %struct.plugin, ptr %5, i32 0, i32 19, !dbg !659
  store ptr @mod_userdir_set_defaults, ptr %set_defaults, align 8, !dbg !660, !tbaa !661
  ret i32 0, !dbg !662
}

; Function Attrs: cold nounwind optsize uwtable
define internal ptr @mod_userdir_init() #0 !dbg !663 {
entry:
  %call = call noalias nonnull ptr @ck_calloc(i64 noundef 1, i64 noundef 184), !dbg !664
  ret ptr %call, !dbg !665
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @mod_userdir_free(ptr noundef %p_d) #0 !dbg !666 {
entry:
  %p_d.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %p_d, ptr %p_d.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %p_d.addr, metadata !668, metadata !DIExpression()), !dbg !670
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !671
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !669, metadata !DIExpression()), !dbg !672
  %0 = load ptr, ptr %p_d.addr, align 8, !dbg !673, !tbaa !631
  store ptr %0, ptr %p, align 8, !dbg !672, !tbaa !631
  %1 = load ptr, ptr %p, align 8, !dbg !674, !tbaa !631
  %cache_user = getelementptr inbounds %struct.plugin_data, ptr %1, i32 0, i32 7, !dbg !675
  %arrayidx = getelementptr inbounds [2 x %struct.buffer], ptr %cache_user, i64 0, i64 0, !dbg !674
  %ptr = getelementptr inbounds %struct.buffer, ptr %arrayidx, i32 0, i32 0, !dbg !676
  %2 = load ptr, ptr %ptr, align 8, !dbg !676, !tbaa !677
  call void @free(ptr noundef %2) #12, !dbg !680
  %3 = load ptr, ptr %p, align 8, !dbg !681, !tbaa !631
  %cache_user1 = getelementptr inbounds %struct.plugin_data, ptr %3, i32 0, i32 7, !dbg !682
  %arrayidx2 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_user1, i64 0, i64 1, !dbg !681
  %ptr3 = getelementptr inbounds %struct.buffer, ptr %arrayidx2, i32 0, i32 0, !dbg !683
  %4 = load ptr, ptr %ptr3, align 8, !dbg !683, !tbaa !677
  call void @free(ptr noundef %4) #12, !dbg !684
  %5 = load ptr, ptr %p, align 8, !dbg !685, !tbaa !631
  %cache_path = getelementptr inbounds %struct.plugin_data, ptr %5, i32 0, i32 8, !dbg !686
  %arrayidx4 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_path, i64 0, i64 0, !dbg !685
  %ptr5 = getelementptr inbounds %struct.buffer, ptr %arrayidx4, i32 0, i32 0, !dbg !687
  %6 = load ptr, ptr %ptr5, align 8, !dbg !687, !tbaa !677
  call void @free(ptr noundef %6) #12, !dbg !688
  %7 = load ptr, ptr %p, align 8, !dbg !689, !tbaa !631
  %cache_path6 = getelementptr inbounds %struct.plugin_data, ptr %7, i32 0, i32 8, !dbg !690
  %arrayidx7 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_path6, i64 0, i64 1, !dbg !689
  %ptr8 = getelementptr inbounds %struct.buffer, ptr %arrayidx7, i32 0, i32 0, !dbg !691
  %8 = load ptr, ptr %ptr8, align 8, !dbg !691, !tbaa !677
  call void @free(ptr noundef %8) #12, !dbg !692
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !693
  ret void, !dbg !693
}

; Function Attrs: nounwind uwtable
define internal i32 @mod_userdir_docroot_handler(ptr noundef %r, ptr noundef %p_d) #1 !dbg !694 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %p_d.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %uptr = alloca ptr, align 8
  %rel_url = alloca ptr, align 8
  %ulen = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !696, metadata !DIExpression()), !dbg !704
  store ptr %p_d, ptr %p_d.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %p_d.addr, metadata !697, metadata !DIExpression()), !dbg !704
  %0 = load ptr, ptr %r.addr, align 8, !dbg !705, !tbaa !631
  %uri = getelementptr inbounds %struct.request_st, ptr %0, i32 0, i32 21, !dbg !707
  %path = getelementptr inbounds %struct.request_uri, ptr %uri, i32 0, i32 2, !dbg !708
  %ptr = getelementptr inbounds %struct.buffer, ptr %path, i32 0, i32 0, !dbg !709
  %1 = load ptr, ptr %ptr, align 8, !dbg !709, !tbaa !710
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0, !dbg !705
  %2 = load i8, ptr %arrayidx, align 1, !dbg !705, !tbaa !718
  %conv = sext i8 %2 to i32, !dbg !705
  %cmp = icmp ne i32 %conv, 47, !dbg !719
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !720

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %r.addr, align 8, !dbg !721, !tbaa !631
  %uri2 = getelementptr inbounds %struct.request_st, ptr %3, i32 0, i32 21, !dbg !722
  %path3 = getelementptr inbounds %struct.request_uri, ptr %uri2, i32 0, i32 2, !dbg !723
  %ptr4 = getelementptr inbounds %struct.buffer, ptr %path3, i32 0, i32 0, !dbg !724
  %4 = load ptr, ptr %ptr4, align 8, !dbg !724, !tbaa !710
  %arrayidx5 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !721
  %5 = load i8, ptr %arrayidx5, align 1, !dbg !721, !tbaa !718
  %conv6 = sext i8 %5 to i32, !dbg !721
  %cmp7 = icmp ne i32 %conv6, 126, !dbg !725
  br i1 %cmp7, label %if.then, label %if.end, !dbg !726

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !727
  br label %return, !dbg !727

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !728
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !698, metadata !DIExpression()), !dbg !729
  %6 = load ptr, ptr %p_d.addr, align 8, !dbg !730, !tbaa !631
  store ptr %6, ptr %p, align 8, !dbg !729, !tbaa !631
  %7 = load ptr, ptr %r.addr, align 8, !dbg !731, !tbaa !631
  %8 = load ptr, ptr %p, align 8, !dbg !732, !tbaa !631
  call void @mod_userdir_patch_config(ptr noundef %7, ptr noundef %8), !dbg !733
  %9 = load ptr, ptr %p, align 8, !dbg !734, !tbaa !631
  %conf = getelementptr inbounds %struct.plugin_data, ptr %9, i32 0, i32 5, !dbg !736
  %active = getelementptr inbounds %struct.plugin_config, ptr %conf, i32 0, i32 5, !dbg !737
  %10 = load i16, ptr %active, align 2, !dbg !737, !tbaa !738
  %tobool = icmp ne i16 %10, 0, !dbg !734
  br i1 %tobool, label %lor.lhs.false9, label %if.then13, !dbg !741

lor.lhs.false9:                                   ; preds = %if.end
  %11 = load ptr, ptr %p, align 8, !dbg !742, !tbaa !631
  %conf10 = getelementptr inbounds %struct.plugin_data, ptr %11, i32 0, i32 5, !dbg !743
  %path11 = getelementptr inbounds %struct.plugin_config, ptr %conf10, i32 0, i32 2, !dbg !744
  %12 = load ptr, ptr %path11, align 8, !dbg !744, !tbaa !745
  %tobool12 = icmp ne ptr %12, null, !dbg !742
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !746

if.then13:                                        ; preds = %lor.lhs.false9, %if.end
  store i32 0, ptr %retval, align 4, !dbg !747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup59, !dbg !747

if.end14:                                         ; preds = %lor.lhs.false9
  call void @llvm.lifetime.start.p0(i64 8, ptr %uptr) #12, !dbg !748
  tail call void @llvm.dbg.declare(metadata ptr %uptr, metadata !699, metadata !DIExpression()), !dbg !749
  %13 = load ptr, ptr %r.addr, align 8, !dbg !750, !tbaa !631
  %uri15 = getelementptr inbounds %struct.request_st, ptr %13, i32 0, i32 21, !dbg !751
  %path16 = getelementptr inbounds %struct.request_uri, ptr %uri15, i32 0, i32 2, !dbg !752
  %ptr17 = getelementptr inbounds %struct.buffer, ptr %path16, i32 0, i32 0, !dbg !753
  %14 = load ptr, ptr %ptr17, align 8, !dbg !753, !tbaa !710
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 2, !dbg !754
  store ptr %add.ptr, ptr %uptr, align 8, !dbg !749, !tbaa !631
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel_url) #12, !dbg !755
  tail call void @llvm.dbg.declare(metadata ptr %rel_url, metadata !701, metadata !DIExpression()), !dbg !756
  %15 = load ptr, ptr %uptr, align 8, !dbg !757, !tbaa !631
  %call = call ptr @strchr(ptr noundef %15, i32 noundef 47) #13, !dbg !758
  store ptr %call, ptr %rel_url, align 8, !dbg !756, !tbaa !631
  %16 = load ptr, ptr %rel_url, align 8, !dbg !759, !tbaa !631
  %cmp18 = icmp eq ptr null, %16, !dbg !761
  br i1 %cmp18, label %if.then20, label %if.end25, !dbg !762

if.then20:                                        ; preds = %if.end14
  %17 = load ptr, ptr %uptr, align 8, !dbg !763, !tbaa !631
  %18 = load i8, ptr %17, align 1, !dbg !766, !tbaa !718
  %tobool21 = icmp ne i8 %18, 0, !dbg !766
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !767

if.then22:                                        ; preds = %if.then20
  store i32 0, ptr %retval, align 4, !dbg !768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !768

if.end23:                                         ; preds = %if.then20
  %19 = load ptr, ptr %r.addr, align 8, !dbg !769, !tbaa !631
  %call24 = call i32 @http_response_redirect_to_directory(ptr noundef %19, i32 noundef 301), !dbg !770
  store i32 1, ptr %retval, align 4, !dbg !771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57, !dbg !771

if.end25:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %ulen) #12, !dbg !772
  tail call void @llvm.dbg.declare(metadata ptr %ulen, metadata !702, metadata !DIExpression()), !dbg !773
  %20 = load ptr, ptr %rel_url, align 8, !dbg !774, !tbaa !631
  %21 = load ptr, ptr %uptr, align 8, !dbg !775, !tbaa !631
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i64, !dbg !776
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64, !dbg !776
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !776
  store i64 %sub.ptr.sub, ptr %ulen, align 8, !dbg !773, !tbaa !777
  %22 = load i64, ptr %ulen, align 8, !dbg !778, !tbaa !777
  %cmp26 = icmp eq i64 0, %22, !dbg !780
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !781

if.then28:                                        ; preds = %if.end25
  store i32 0, ptr %retval, align 4, !dbg !782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !782

if.end29:                                         ; preds = %if.end25
  %23 = load ptr, ptr %p, align 8, !dbg !783, !tbaa !631
  %conf30 = getelementptr inbounds %struct.plugin_data, ptr %23, i32 0, i32 5, !dbg !785
  %exclude_user = getelementptr inbounds %struct.plugin_config, ptr %conf30, i32 0, i32 0, !dbg !786
  %24 = load ptr, ptr %exclude_user, align 8, !dbg !786, !tbaa !787
  %tobool31 = icmp ne ptr %24, null, !dbg !783
  br i1 %tobool31, label %if.then32, label %if.end45, !dbg !788

if.then32:                                        ; preds = %if.end29
  %25 = load ptr, ptr %r.addr, align 8, !dbg !789, !tbaa !631
  %conf33 = getelementptr inbounds %struct.request_st, ptr %25, i32 0, i32 17, !dbg !792
  %force_lowercase_filenames = getelementptr inbounds %struct.request_config, ptr %conf33, i32 0, i32 14, !dbg !793
  %bf.load = load i32, ptr %force_lowercase_filenames, align 8, !dbg !793
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !793
  %bf.clear = and i32 %bf.lshr, 3, !dbg !793
  %tobool34 = icmp ne i32 %bf.clear, 0, !dbg !789
  br i1 %tobool34, label %cond.false, label %cond.true, !dbg !794

cond.true:                                        ; preds = %if.then32
  %26 = load ptr, ptr %p, align 8, !dbg !795, !tbaa !631
  %conf35 = getelementptr inbounds %struct.plugin_data, ptr %26, i32 0, i32 5, !dbg !796
  %exclude_user36 = getelementptr inbounds %struct.plugin_config, ptr %conf35, i32 0, i32 0, !dbg !797
  %27 = load ptr, ptr %exclude_user36, align 8, !dbg !797, !tbaa !787
  %28 = load ptr, ptr %uptr, align 8, !dbg !798, !tbaa !631
  %29 = load i64, ptr %ulen, align 8, !dbg !799, !tbaa !777
  %call37 = call i32 @mod_userdir_in_vlist(ptr noundef %27, ptr noundef %28, i64 noundef %29), !dbg !800
  %tobool38 = icmp ne i32 %call37, 0, !dbg !800
  br i1 %tobool38, label %if.then43, label %if.end44, !dbg !801

cond.false:                                       ; preds = %if.then32
  %30 = load ptr, ptr %p, align 8, !dbg !802, !tbaa !631
  %conf39 = getelementptr inbounds %struct.plugin_data, ptr %30, i32 0, i32 5, !dbg !803
  %exclude_user40 = getelementptr inbounds %struct.plugin_config, ptr %conf39, i32 0, i32 0, !dbg !804
  %31 = load ptr, ptr %exclude_user40, align 8, !dbg !804, !tbaa !787
  %32 = load ptr, ptr %uptr, align 8, !dbg !805, !tbaa !631
  %33 = load i64, ptr %ulen, align 8, !dbg !806, !tbaa !777
  %call41 = call i32 @mod_userdir_in_vlist_nc(ptr noundef %31, ptr noundef %32, i64 noundef %33), !dbg !807
  %tobool42 = icmp ne i32 %call41, 0, !dbg !807
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !794

if.then43:                                        ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !808

if.end44:                                         ; preds = %cond.false, %cond.true
  br label %if.end45, !dbg !809

if.end45:                                         ; preds = %if.end44, %if.end29
  %34 = load ptr, ptr %p, align 8, !dbg !810, !tbaa !631
  %conf46 = getelementptr inbounds %struct.plugin_data, ptr %34, i32 0, i32 5, !dbg !812
  %include_user = getelementptr inbounds %struct.plugin_config, ptr %conf46, i32 0, i32 1, !dbg !813
  %35 = load ptr, ptr %include_user, align 8, !dbg !813, !tbaa !814
  %tobool47 = icmp ne ptr %35, null, !dbg !810
  br i1 %tobool47, label %if.then48, label %if.end55, !dbg !815

if.then48:                                        ; preds = %if.end45
  %36 = load ptr, ptr %p, align 8, !dbg !816, !tbaa !631
  %conf49 = getelementptr inbounds %struct.plugin_data, ptr %36, i32 0, i32 5, !dbg !819
  %include_user50 = getelementptr inbounds %struct.plugin_config, ptr %conf49, i32 0, i32 1, !dbg !820
  %37 = load ptr, ptr %include_user50, align 8, !dbg !820, !tbaa !814
  %38 = load ptr, ptr %uptr, align 8, !dbg !821, !tbaa !631
  %39 = load i64, ptr %ulen, align 8, !dbg !822, !tbaa !777
  %call51 = call i32 @mod_userdir_in_vlist(ptr noundef %37, ptr noundef %38, i64 noundef %39), !dbg !823
  %tobool52 = icmp ne i32 %call51, 0, !dbg !823
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !824

if.then53:                                        ; preds = %if.then48
  store i32 0, ptr %retval, align 4, !dbg !825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !825

if.end54:                                         ; preds = %if.then48
  br label %if.end55, !dbg !826

if.end55:                                         ; preds = %if.end54, %if.end45
  %40 = load ptr, ptr %r.addr, align 8, !dbg !827, !tbaa !631
  %41 = load ptr, ptr %p, align 8, !dbg !828, !tbaa !631
  %42 = load ptr, ptr %uptr, align 8, !dbg !829, !tbaa !631
  %43 = load i64, ptr %ulen, align 8, !dbg !830, !tbaa !777
  %call56 = call i32 @mod_userdir_docroot_construct(ptr noundef %40, ptr noundef %41, ptr noundef %42, i64 noundef %43), !dbg !831
  store i32 %call56, ptr %retval, align 4, !dbg !832
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !832

cleanup:                                          ; preds = %if.end55, %if.then53, %if.then43, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %ulen) #12, !dbg !833
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup, %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel_url) #12, !dbg !833
  call void @llvm.lifetime.end.p0(i64 8, ptr %uptr) #12, !dbg !833
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup57, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !833
  br label %return

return:                                           ; preds = %cleanup59, %if.then
  %44 = load i32, ptr %retval, align 4, !dbg !833
  ret i32 %44, !dbg !833
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @mod_userdir_set_defaults(ptr noundef %srv, ptr noundef %p_d) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %srv.addr = alloca ptr, align 8
  %p_d.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %cpv = alloca ptr, align 8
  %cpv29 = alloca ptr, align 8
  store ptr %srv, ptr %srv.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %srv.addr, metadata !255, metadata !DIExpression()), !dbg !834
  store ptr %p_d, ptr %p_d.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %p_d.addr, metadata !256, metadata !DIExpression()), !dbg !834
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !835
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !257, metadata !DIExpression()), !dbg !836
  %0 = load ptr, ptr %p_d.addr, align 8, !dbg !837, !tbaa !631
  store ptr %0, ptr %p, align 8, !dbg !836, !tbaa !631
  %1 = load ptr, ptr %srv.addr, align 8, !dbg !838, !tbaa !631
  %2 = load ptr, ptr %p, align 8, !dbg !840, !tbaa !631
  %call = call i32 @config_plugin_values_init(ptr noundef %1, ptr noundef %2, ptr noundef @mod_userdir_set_defaults.cpk, ptr noundef @.str.7) #14, !dbg !841
  %tobool = icmp ne i32 %call, 0, !dbg !841
  br i1 %tobool, label %if.end, label %if.then, !dbg !842

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !843

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !844
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !598, metadata !DIExpression()), !dbg !845
  %3 = load ptr, ptr %p, align 8, !dbg !846, !tbaa !631
  %cvlist = getelementptr inbounds %struct.plugin_data, ptr %3, i32 0, i32 2, !dbg !847
  %4 = load ptr, ptr %cvlist, align 8, !dbg !847, !tbaa !848
  %arrayidx = getelementptr inbounds %struct.config_plugin_value, ptr %4, i64 0, !dbg !846
  %v = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx, i32 0, i32 2, !dbg !849
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %v, i64 0, i64 1, !dbg !846
  %5 = load i32, ptr %arrayidx1, align 4, !dbg !846, !tbaa !718
  %tobool2 = icmp ne i32 %5, 0, !dbg !850
  %lnot = xor i1 %tobool2, true, !dbg !850
  %lnot.ext = zext i1 %lnot to i32, !dbg !850
  store i32 %lnot.ext, ptr %i, align 4, !dbg !845, !tbaa !851
  br label %for.cond, !dbg !844

for.cond:                                         ; preds = %for.inc20, %if.end
  %6 = load i32, ptr %i, align 4, !dbg !852, !tbaa !851
  %7 = load ptr, ptr %p, align 8, !dbg !853, !tbaa !631
  %nconfig = getelementptr inbounds %struct.plugin_data, ptr %7, i32 0, i32 1, !dbg !854
  %8 = load i32, ptr %nconfig, align 4, !dbg !854, !tbaa !855
  %cmp = icmp slt i32 %6, %8, !dbg !856
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !857

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !858
  br label %for.end21

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpv) #12, !dbg !859
  tail call void @llvm.dbg.declare(metadata ptr %cpv, metadata !600, metadata !DIExpression()), !dbg !860
  %9 = load ptr, ptr %p, align 8, !dbg !861, !tbaa !631
  %cvlist3 = getelementptr inbounds %struct.plugin_data, ptr %9, i32 0, i32 2, !dbg !862
  %10 = load ptr, ptr %cvlist3, align 8, !dbg !862, !tbaa !848
  %11 = load ptr, ptr %p, align 8, !dbg !863, !tbaa !631
  %cvlist4 = getelementptr inbounds %struct.plugin_data, ptr %11, i32 0, i32 2, !dbg !864
  %12 = load ptr, ptr %cvlist4, align 8, !dbg !864, !tbaa !848
  %13 = load i32, ptr %i, align 4, !dbg !865, !tbaa !851
  %idxprom = sext i32 %13 to i64, !dbg !863
  %arrayidx5 = getelementptr inbounds %struct.config_plugin_value, ptr %12, i64 %idxprom, !dbg !863
  %v6 = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx5, i32 0, i32 2, !dbg !866
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %v6, i64 0, i64 0, !dbg !863
  %14 = load i32, ptr %arrayidx7, align 8, !dbg !863, !tbaa !718
  %idx.ext = zext i32 %14 to i64, !dbg !867
  %add.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %10, i64 %idx.ext, !dbg !867
  store ptr %add.ptr, ptr %cpv, align 8, !dbg !860, !tbaa !631
  br label %for.cond8, !dbg !868

for.cond8:                                        ; preds = %for.inc, %for.body
  %15 = load ptr, ptr %cpv, align 8, !dbg !869, !tbaa !631
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %15, i32 0, i32 0, !dbg !872
  %16 = load i32, ptr %k_id, align 8, !dbg !872, !tbaa !873
  %cmp9 = icmp ne i32 -1, %16, !dbg !875
  br i1 %cmp9, label %for.body10, label %for.end, !dbg !876

for.body10:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %cpv, align 8, !dbg !877, !tbaa !631
  %k_id11 = getelementptr inbounds %struct.config_plugin_value, ptr %17, i32 0, i32 0, !dbg !879
  %18 = load i32, ptr %k_id11, align 8, !dbg !879, !tbaa !873
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb12
    i32 4, label %sw.bb19
    i32 5, label %sw.bb19
  ], !dbg !880

sw.bb:                                            ; preds = %for.body10, %for.body10, %for.body10
  br label %sw.epilog, !dbg !881

sw.bb12:                                          ; preds = %for.body10
  %19 = load ptr, ptr %cpv, align 8, !dbg !883, !tbaa !631
  %v13 = getelementptr inbounds %struct.config_plugin_value, ptr %19, i32 0, i32 2, !dbg !885
  %20 = load ptr, ptr %v13, align 8, !dbg !886, !tbaa !718
  %call14 = call i32 @buffer_is_blank(ptr noundef %20) #13, !dbg !887
  %tobool15 = icmp ne i32 %call14, 0, !dbg !887
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !888

if.then16:                                        ; preds = %sw.bb12
  %21 = load ptr, ptr %cpv, align 8, !dbg !889, !tbaa !631
  %v17 = getelementptr inbounds %struct.config_plugin_value, ptr %21, i32 0, i32 2, !dbg !890
  store ptr null, ptr %v17, align 8, !dbg !891, !tbaa !718
  br label %if.end18, !dbg !889

if.end18:                                         ; preds = %if.then16, %sw.bb12
  br label %sw.epilog, !dbg !892

sw.bb19:                                          ; preds = %for.body10, %for.body10
  br label %sw.epilog, !dbg !893

sw.default:                                       ; preds = %for.body10
  br label %sw.epilog, !dbg !894

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %if.end18, %sw.bb
  br label %for.inc, !dbg !895

for.inc:                                          ; preds = %sw.epilog
  %22 = load ptr, ptr %cpv, align 8, !dbg !896, !tbaa !631
  %incdec.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %22, i32 1, !dbg !896
  store ptr %incdec.ptr, ptr %cpv, align 8, !dbg !896, !tbaa !631
  br label %for.cond8, !dbg !897, !llvm.loop !898

for.end:                                          ; preds = %for.cond8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpv) #12, !dbg !901
  br label %for.inc20, !dbg !902

for.inc20:                                        ; preds = %for.end
  %23 = load i32, ptr %i, align 4, !dbg !903, !tbaa !851
  %inc = add nsw i32 %23, 1, !dbg !903
  store i32 %inc, ptr %i, align 4, !dbg !903, !tbaa !851
  br label %for.cond, !dbg !858, !llvm.loop !904

for.end21:                                        ; preds = %for.cond.cleanup
  %24 = load ptr, ptr %p, align 8, !dbg !906, !tbaa !631
  %defaults = getelementptr inbounds %struct.plugin_data, ptr %24, i32 0, i32 4, !dbg !907
  %active = getelementptr inbounds %struct.plugin_config, ptr %defaults, i32 0, i32 5, !dbg !908
  store i16 1, ptr %active, align 2, !dbg !909, !tbaa !910
  %25 = load ptr, ptr %p, align 8, !dbg !911, !tbaa !631
  %nconfig22 = getelementptr inbounds %struct.plugin_data, ptr %25, i32 0, i32 1, !dbg !912
  %26 = load i32, ptr %nconfig22, align 4, !dbg !912, !tbaa !855
  %cmp23 = icmp sgt i32 %26, 0, !dbg !913
  br i1 %cmp23, label %land.lhs.true, label %if.end41, !dbg !914

land.lhs.true:                                    ; preds = %for.end21
  %27 = load ptr, ptr %p, align 8, !dbg !915, !tbaa !631
  %cvlist24 = getelementptr inbounds %struct.plugin_data, ptr %27, i32 0, i32 2, !dbg !916
  %28 = load ptr, ptr %cvlist24, align 8, !dbg !916, !tbaa !848
  %v25 = getelementptr inbounds %struct.config_plugin_value, ptr %28, i32 0, i32 2, !dbg !917
  %arrayidx26 = getelementptr inbounds [2 x i32], ptr %v25, i64 0, i64 1, !dbg !915
  %29 = load i32, ptr %arrayidx26, align 4, !dbg !915, !tbaa !718
  %tobool27 = icmp ne i32 %29, 0, !dbg !915
  br i1 %tobool27, label %if.then28, label %if.end41, !dbg !918

if.then28:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpv29) #12, !dbg !919
  tail call void @llvm.dbg.declare(metadata ptr %cpv29, metadata !603, metadata !DIExpression()), !dbg !920
  %30 = load ptr, ptr %p, align 8, !dbg !921, !tbaa !631
  %cvlist30 = getelementptr inbounds %struct.plugin_data, ptr %30, i32 0, i32 2, !dbg !922
  %31 = load ptr, ptr %cvlist30, align 8, !dbg !922, !tbaa !848
  %32 = load ptr, ptr %p, align 8, !dbg !923, !tbaa !631
  %cvlist31 = getelementptr inbounds %struct.plugin_data, ptr %32, i32 0, i32 2, !dbg !924
  %33 = load ptr, ptr %cvlist31, align 8, !dbg !924, !tbaa !848
  %v32 = getelementptr inbounds %struct.config_plugin_value, ptr %33, i32 0, i32 2, !dbg !925
  %arrayidx33 = getelementptr inbounds [2 x i32], ptr %v32, i64 0, i64 0, !dbg !923
  %34 = load i32, ptr %arrayidx33, align 8, !dbg !923, !tbaa !718
  %idx.ext34 = zext i32 %34 to i64, !dbg !926
  %add.ptr35 = getelementptr inbounds %struct.config_plugin_value, ptr %31, i64 %idx.ext34, !dbg !926
  store ptr %add.ptr35, ptr %cpv29, align 8, !dbg !920, !tbaa !631
  %35 = load ptr, ptr %cpv29, align 8, !dbg !927, !tbaa !631
  %k_id36 = getelementptr inbounds %struct.config_plugin_value, ptr %35, i32 0, i32 0, !dbg !929
  %36 = load i32, ptr %k_id36, align 8, !dbg !929, !tbaa !873
  %cmp37 = icmp ne i32 -1, %36, !dbg !930
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !931

if.then38:                                        ; preds = %if.then28
  %37 = load ptr, ptr %p, align 8, !dbg !932, !tbaa !631
  %defaults39 = getelementptr inbounds %struct.plugin_data, ptr %37, i32 0, i32 4, !dbg !933
  %38 = load ptr, ptr %cpv29, align 8, !dbg !934, !tbaa !631
  call void @mod_userdir_merge_config(ptr noundef %defaults39, ptr noundef %38), !dbg !935
  br label %if.end40, !dbg !935

if.end40:                                         ; preds = %if.then38, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpv29) #12, !dbg !936
  br label %if.end41, !dbg !937

if.end41:                                         ; preds = %if.end40, %land.lhs.true, %for.end21
  store i32 0, ptr %retval, align 4, !dbg !938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !938

cleanup:                                          ; preds = %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !939
  %39 = load i32, ptr %retval, align 4, !dbg !939
  ret i32 %39, !dbg !939
}

declare !dbg !940 noalias nonnull ptr @ck_calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare !dbg !944 void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal void @mod_userdir_patch_config(ptr noundef %r, ptr noundef %p) #1 !dbg !946 {
entry:
  %r.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %used = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !951, metadata !DIExpression()), !dbg !956
  store ptr %p, ptr %p.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !952, metadata !DIExpression()), !dbg !957
  %0 = load ptr, ptr %p.addr, align 8, !dbg !958, !tbaa !631
  %conf = getelementptr inbounds %struct.plugin_data, ptr %0, i32 0, i32 5, !dbg !959
  %1 = load ptr, ptr %p.addr, align 8, !dbg !960, !tbaa !631
  %defaults = getelementptr inbounds %struct.plugin_data, ptr %1, i32 0, i32 4, !dbg !961
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %conf, ptr align 8 %defaults, i64 40, i1 false), !dbg !962
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !953, metadata !DIExpression()), !dbg !964
  store i32 1, ptr %i, align 4, !dbg !964, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #12, !dbg !963
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !955, metadata !DIExpression()), !dbg !965
  %2 = load ptr, ptr %p.addr, align 8, !dbg !966, !tbaa !631
  %nconfig = getelementptr inbounds %struct.plugin_data, ptr %2, i32 0, i32 1, !dbg !967
  %3 = load i32, ptr %nconfig, align 4, !dbg !967, !tbaa !855
  store i32 %3, ptr %used, align 4, !dbg !965, !tbaa !851
  br label %for.cond, !dbg !963

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !968, !tbaa !851
  %5 = load i32, ptr %used, align 4, !dbg !970, !tbaa !851
  %cmp = icmp slt i32 %4, %5, !dbg !971
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !972

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #12, !dbg !973
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !973
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %r.addr, align 8, !dbg !974, !tbaa !631
  %7 = load ptr, ptr %p.addr, align 8, !dbg !977, !tbaa !631
  %cvlist = getelementptr inbounds %struct.plugin_data, ptr %7, i32 0, i32 2, !dbg !978
  %8 = load ptr, ptr %cvlist, align 8, !dbg !978, !tbaa !848
  %9 = load i32, ptr %i, align 4, !dbg !979, !tbaa !851
  %idxprom = sext i32 %9 to i64, !dbg !977
  %arrayidx = getelementptr inbounds %struct.config_plugin_value, ptr %8, i64 %idxprom, !dbg !977
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx, i32 0, i32 0, !dbg !980
  %10 = load i32, ptr %k_id, align 8, !dbg !980, !tbaa !873
  %call = call i32 @config_check_cond(ptr noundef %6, i32 noundef %10), !dbg !981
  %tobool = icmp ne i32 %call, 0, !dbg !981
  br i1 %tobool, label %if.then, label %if.end, !dbg !982

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %p.addr, align 8, !dbg !983, !tbaa !631
  %conf1 = getelementptr inbounds %struct.plugin_data, ptr %11, i32 0, i32 5, !dbg !984
  %12 = load ptr, ptr %p.addr, align 8, !dbg !985, !tbaa !631
  %cvlist2 = getelementptr inbounds %struct.plugin_data, ptr %12, i32 0, i32 2, !dbg !986
  %13 = load ptr, ptr %cvlist2, align 8, !dbg !986, !tbaa !848
  %14 = load ptr, ptr %p.addr, align 8, !dbg !987, !tbaa !631
  %cvlist3 = getelementptr inbounds %struct.plugin_data, ptr %14, i32 0, i32 2, !dbg !988
  %15 = load ptr, ptr %cvlist3, align 8, !dbg !988, !tbaa !848
  %16 = load i32, ptr %i, align 4, !dbg !989, !tbaa !851
  %idxprom4 = sext i32 %16 to i64, !dbg !987
  %arrayidx5 = getelementptr inbounds %struct.config_plugin_value, ptr %15, i64 %idxprom4, !dbg !987
  %v = getelementptr inbounds %struct.config_plugin_value, ptr %arrayidx5, i32 0, i32 2, !dbg !990
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %v, i64 0, i64 0, !dbg !987
  %17 = load i32, ptr %arrayidx6, align 8, !dbg !987, !tbaa !718
  %idx.ext = zext i32 %17 to i64, !dbg !991
  %add.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %13, i64 %idx.ext, !dbg !991
  call void @mod_userdir_merge_config(ptr noundef %conf1, ptr noundef %add.ptr), !dbg !992
  br label %if.end, !dbg !992

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !993

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !dbg !994, !tbaa !851
  %inc = add nsw i32 %18, 1, !dbg !994
  store i32 %inc, ptr %i, align 4, !dbg !994, !tbaa !851
  br label %for.cond, !dbg !973, !llvm.loop !995

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !997
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !998 ptr @strchr(ptr noundef, i32 noundef) #5

declare !dbg !1002 i32 @http_response_redirect_to_directory(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @mod_userdir_in_vlist(ptr noundef %a, ptr noundef %k, i64 noundef %klen) #1 !dbg !1006 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %klen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ds = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1011, metadata !DIExpression()), !dbg !1021
  store ptr %k, ptr %k.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1012, metadata !DIExpression()), !dbg !1022
  store i64 %klen, ptr %klen.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %klen.addr, metadata !1013, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1024
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1014, metadata !DIExpression()), !dbg !1025
  store i32 0, ptr %i, align 4, !dbg !1025, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #12, !dbg !1024
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !1016, metadata !DIExpression()), !dbg !1026
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1027, !tbaa !631
  %used1 = getelementptr inbounds %struct.array, ptr %0, i32 0, i32 2, !dbg !1028
  %1 = load i32, ptr %used1, align 8, !dbg !1028, !tbaa !1029
  store i32 %1, ptr %used, align 4, !dbg !1026, !tbaa !851
  br label %for.cond, !dbg !1024

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !1030, !tbaa !851
  %3 = load i32, ptr %used, align 4, !dbg !1031, !tbaa !851
  %cmp = icmp ult i32 %2, %3, !dbg !1032
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1033

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup2, !dbg !1033

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #12, !dbg !1034
  tail call void @llvm.dbg.declare(metadata ptr %ds, metadata !1017, metadata !DIExpression()), !dbg !1035
  %4 = load ptr, ptr %a.addr, align 8, !dbg !1036, !tbaa !631
  %data = getelementptr inbounds %struct.array, ptr %4, i32 0, i32 0, !dbg !1037
  %5 = load ptr, ptr %data, align 8, !dbg !1037, !tbaa !1038
  %6 = load i32, ptr %i, align 4, !dbg !1039, !tbaa !851
  %idxprom = zext i32 %6 to i64, !dbg !1036
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1036
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1036, !tbaa !631
  store ptr %7, ptr %ds, align 8, !dbg !1035, !tbaa !631
  %8 = load ptr, ptr %ds, align 8, !dbg !1040, !tbaa !631
  %value = getelementptr inbounds %struct.data_string, ptr %8, i32 0, i32 4, !dbg !1042
  %9 = load ptr, ptr %k.addr, align 8, !dbg !1043, !tbaa !631
  %10 = load i64, ptr %klen.addr, align 8, !dbg !1044, !tbaa !777
  %call = call i32 @buffer_eq_slen(ptr noundef %value, ptr noundef %9, i64 noundef %10) #13, !dbg !1045
  %tobool = icmp ne i32 %call, 0, !dbg !1045
  br i1 %tobool, label %if.then, label %if.end, !dbg !1046

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !1047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1048
  br label %cleanup, !dbg !1048

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #12, !dbg !1048
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1049

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i32, ptr %i, align 4, !dbg !1050, !tbaa !851
  %inc = add i32 %11, 1, !dbg !1050
  store i32 %inc, ptr %i, align 4, !dbg !1050, !tbaa !851
  br label %for.cond, !dbg !1051, !llvm.loop !1052

cleanup2:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #12, !dbg !1051
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1051
  %cleanup.dest4 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest4, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup2
  store i32 0, ptr %retval, align 4, !dbg !1054
  br label %return, !dbg !1054

return:                                           ; preds = %for.end, %cleanup2
  %12 = load i32, ptr %retval, align 4, !dbg !1055
  ret i32 %12, !dbg !1055

unreachable:                                      ; preds = %cleanup2
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @mod_userdir_in_vlist_nc(ptr noundef %a, ptr noundef %k, i64 noundef %klen) #1 !dbg !1056 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %klen.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %ds = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1058, metadata !DIExpression()), !dbg !1067
  store ptr %k, ptr %k.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1059, metadata !DIExpression()), !dbg !1068
  store i64 %klen, ptr %klen.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %klen.addr, metadata !1060, metadata !DIExpression()), !dbg !1069
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1070
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1061, metadata !DIExpression()), !dbg !1071
  store i32 0, ptr %i, align 4, !dbg !1071, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %used) #12, !dbg !1070
  tail call void @llvm.dbg.declare(metadata ptr %used, metadata !1063, metadata !DIExpression()), !dbg !1072
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1073, !tbaa !631
  %used1 = getelementptr inbounds %struct.array, ptr %0, i32 0, i32 2, !dbg !1074
  %1 = load i32, ptr %used1, align 8, !dbg !1074, !tbaa !1029
  store i32 %1, ptr %used, align 4, !dbg !1072, !tbaa !851
  br label %for.cond, !dbg !1070

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !1075, !tbaa !851
  %3 = load i32, ptr %used, align 4, !dbg !1076, !tbaa !851
  %cmp = icmp ult i32 %2, %3, !dbg !1077
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1078

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup2, !dbg !1078

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #12, !dbg !1079
  tail call void @llvm.dbg.declare(metadata ptr %ds, metadata !1064, metadata !DIExpression()), !dbg !1080
  %4 = load ptr, ptr %a.addr, align 8, !dbg !1081, !tbaa !631
  %data = getelementptr inbounds %struct.array, ptr %4, i32 0, i32 0, !dbg !1082
  %5 = load ptr, ptr %data, align 8, !dbg !1082, !tbaa !1038
  %6 = load i32, ptr %i, align 4, !dbg !1083, !tbaa !851
  %idxprom = zext i32 %6 to i64, !dbg !1081
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1081
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1081, !tbaa !631
  store ptr %7, ptr %ds, align 8, !dbg !1080, !tbaa !631
  %8 = load ptr, ptr %ds, align 8, !dbg !1084, !tbaa !631
  %value = getelementptr inbounds %struct.data_string, ptr %8, i32 0, i32 4, !dbg !1086
  %9 = load ptr, ptr %k.addr, align 8, !dbg !1087, !tbaa !631
  %10 = load i64, ptr %klen.addr, align 8, !dbg !1088, !tbaa !777
  %call = call i32 @buffer_eq_icase_slen(ptr noundef %value, ptr noundef %9, i64 noundef %10) #13, !dbg !1089
  %tobool = icmp ne i32 %call, 0, !dbg !1089
  br i1 %tobool, label %if.then, label %if.end, !dbg !1090

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end:                                           ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1092
  br label %cleanup, !dbg !1092

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #12, !dbg !1092
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup2 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1093

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i32, ptr %i, align 4, !dbg !1094, !tbaa !851
  %inc = add i32 %11, 1, !dbg !1094
  store i32 %inc, ptr %i, align 4, !dbg !1094, !tbaa !851
  br label %for.cond, !dbg !1095, !llvm.loop !1096

cleanup2:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %used) #12, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1095
  %cleanup.dest4 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest4, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup2
  store i32 0, ptr %retval, align 4, !dbg !1098
  br label %return, !dbg !1098

return:                                           ; preds = %for.end, %cleanup2
  %12 = load i32, ptr %retval, align 4, !dbg !1099
  ret i32 %12, !dbg !1099

unreachable:                                      ; preds = %cleanup2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mod_userdir_docroot_construct(ptr noundef %r, ptr noundef %p, ptr noundef %uptr, i64 noundef %ulen) #6 !dbg !1100 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %uptr.addr = alloca ptr, align 8
  %ulen.addr = alloca i64, align 8
  %u = alloca [256 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %b = alloca ptr, align 8
  %cur_ts = alloca i64, align 8
  %cached = alloca i32, align 4
  %cache_sz = alloca i32, align 4
  %i = alloca i32, align 4
  %pwd = alloca ptr, align 8
  %plen = alloca i64, align 8
  %cache_ts47 = alloca i64, align 8
  %i50 = alloca i32, align 4
  %i108 = alloca i64, align 8
  %c = alloca i32, align 4
  %i140 = alloca i64, align 8
  %rel_url = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1104, metadata !DIExpression()), !dbg !1153
  store ptr %p, ptr %p.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1105, metadata !DIExpression()), !dbg !1154
  store ptr %uptr, ptr %uptr.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !1106, metadata !DIExpression()), !dbg !1155
  store i64 %ulen, ptr %ulen.addr, align 8, !tbaa !777
  tail call void @llvm.dbg.declare(metadata ptr %ulen.addr, metadata !1107, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 256, ptr %u) #12, !dbg !1157
  tail call void @llvm.dbg.declare(metadata ptr %u, metadata !1108, metadata !DIExpression()), !dbg !1158
  %0 = load i64, ptr %ulen.addr, align 8, !dbg !1159, !tbaa !777
  %cmp = icmp uge i64 %0, 256, !dbg !1161
  br i1 %cmp, label %if.then, label %if.end, !dbg !1162

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup199, !dbg !1163

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1164
  %1 = load ptr, ptr %uptr.addr, align 8, !dbg !1165, !tbaa !631
  %2 = load i64, ptr %ulen.addr, align 8, !dbg !1166, !tbaa !777
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 %1, i64 %2, i1 false), !dbg !1164
  %3 = load i64, ptr %ulen.addr, align 8, !dbg !1167, !tbaa !777
  %arrayidx = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 %3, !dbg !1168
  store i8 0, ptr %arrayidx, align 1, !dbg !1169, !tbaa !718
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #12, !dbg !1170
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !1112, metadata !DIExpression()), !dbg !1171
  %4 = load ptr, ptr %r.addr, align 8, !dbg !1172, !tbaa !631
  %tmp_buf = getelementptr inbounds %struct.request_st, ptr %4, i32 0, i32 44, !dbg !1173
  %5 = load ptr, ptr %tmp_buf, align 8, !dbg !1173, !tbaa !1174
  store ptr %5, ptr %b, align 8, !dbg !1171, !tbaa !631
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1175, !tbaa !631
  %conf = getelementptr inbounds %struct.plugin_data, ptr %6, i32 0, i32 5, !dbg !1176
  %basepath = getelementptr inbounds %struct.plugin_config, ptr %conf, i32 0, i32 3, !dbg !1177
  %7 = load ptr, ptr %basepath, align 8, !dbg !1177, !tbaa !1178
  %tobool = icmp ne ptr %7, null, !dbg !1175
  br i1 %tobool, label %if.else91, label %if.then1, !dbg !1179

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_ts) #12, !dbg !1180
  tail call void @llvm.dbg.declare(metadata ptr %cur_ts, metadata !1114, metadata !DIExpression()), !dbg !1181
  %8 = load i64, ptr @log_monotonic_secs, align 8, !dbg !1182, !tbaa !777
  store i64 %8, ptr %cur_ts, align 8, !dbg !1181, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %cached) #12, !dbg !1183
  tail call void @llvm.dbg.declare(metadata ptr %cached, metadata !1118, metadata !DIExpression()), !dbg !1184
  store i32 -1, ptr %cached, align 4, !dbg !1184, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %cache_sz) #12, !dbg !1185
  tail call void @llvm.dbg.declare(metadata ptr %cache_sz, metadata !1119, metadata !DIExpression()), !dbg !1186
  store i32 2, ptr %cache_sz, align 4, !dbg !1186, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1187
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1121, metadata !DIExpression()), !dbg !1188
  store i32 0, ptr %i, align 4, !dbg !1188, !tbaa !851
  br label %for.cond, !dbg !1187

for.cond:                                         ; preds = %for.inc, %if.then1
  %9 = load i32, ptr %i, align 4, !dbg !1189, !tbaa !851
  %cmp2 = icmp slt i32 %9, 2, !dbg !1191
  br i1 %cmp2, label %for.body, label %for.cond.cleanup, !dbg !1192

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1192

for.body:                                         ; preds = %for.cond
  %10 = load i64, ptr %cur_ts, align 8, !dbg !1193, !tbaa !777
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1196, !tbaa !631
  %cache_ts = getelementptr inbounds %struct.plugin_data, ptr %11, i32 0, i32 6, !dbg !1197
  %12 = load i32, ptr %i, align 4, !dbg !1198, !tbaa !851
  %idxprom = sext i32 %12 to i64, !dbg !1196
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %cache_ts, i64 0, i64 %idxprom, !dbg !1196
  %13 = load i64, ptr %arrayidx3, align 8, !dbg !1196, !tbaa !777
  %sub = sub nsw i64 %10, %13, !dbg !1199
  %cmp4 = icmp slt i64 %sub, 60, !dbg !1200
  br i1 %cmp4, label %land.lhs.true, label %if.end15, !dbg !1201

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1202, !tbaa !631
  %cache_user = getelementptr inbounds %struct.plugin_data, ptr %14, i32 0, i32 7, !dbg !1203
  %15 = load i32, ptr %i, align 4, !dbg !1204, !tbaa !851
  %idxprom5 = sext i32 %15 to i64, !dbg !1202
  %arrayidx6 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_user, i64 0, i64 %idxprom5, !dbg !1202
  %used = getelementptr inbounds %struct.buffer, ptr %arrayidx6, i32 0, i32 1, !dbg !1205
  %16 = load i32, ptr %used, align 8, !dbg !1205, !tbaa !1206
  %tobool7 = icmp ne i32 %16, 0, !dbg !1202
  br i1 %tobool7, label %land.lhs.true8, label %if.end15, !dbg !1207

land.lhs.true8:                                   ; preds = %land.lhs.true
  %17 = load ptr, ptr %p.addr, align 8, !dbg !1208, !tbaa !631
  %cache_user9 = getelementptr inbounds %struct.plugin_data, ptr %17, i32 0, i32 7, !dbg !1209
  %18 = load i32, ptr %i, align 4, !dbg !1210, !tbaa !851
  %idxprom10 = sext i32 %18 to i64, !dbg !1208
  %arrayidx11 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_user9, i64 0, i64 %idxprom10, !dbg !1208
  %arraydecay12 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1211
  %19 = load i64, ptr %ulen.addr, align 8, !dbg !1212, !tbaa !777
  %call = call i32 @buffer_eq_slen(ptr noundef %arrayidx11, ptr noundef %arraydecay12, i64 noundef %19) #13, !dbg !1213
  %tobool13 = icmp ne i32 %call, 0, !dbg !1213
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1214

if.then14:                                        ; preds = %land.lhs.true8
  %20 = load i32, ptr %i, align 4, !dbg !1215, !tbaa !851
  store i32 %20, ptr %cached, align 4, !dbg !1217, !tbaa !851
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1218

if.end15:                                         ; preds = %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc, !dbg !1219

for.inc:                                          ; preds = %if.end15
  %21 = load i32, ptr %i, align 4, !dbg !1220, !tbaa !851
  %inc = add nsw i32 %21, 1, !dbg !1220
  store i32 %inc, ptr %i, align 4, !dbg !1220, !tbaa !851
  br label %for.cond, !dbg !1221, !llvm.loop !1222

cleanup:                                          ; preds = %if.then14, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1221
  br label %for.end

for.end:                                          ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %pwd) #12, !dbg !1224
  tail call void @llvm.dbg.declare(metadata ptr %pwd, metadata !1123, metadata !DIExpression()), !dbg !1225
  %22 = load i32, ptr %cached, align 4, !dbg !1226, !tbaa !851
  %cmp16 = icmp sge i32 %22, 0, !dbg !1227
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1228

if.then17:                                        ; preds = %for.end
  %23 = load ptr, ptr %b, align 8, !dbg !1229, !tbaa !631
  %24 = load ptr, ptr %p.addr, align 8, !dbg !1231, !tbaa !631
  %cache_path = getelementptr inbounds %struct.plugin_data, ptr %24, i32 0, i32 8, !dbg !1231
  %25 = load i32, ptr %cached, align 4, !dbg !1231, !tbaa !851
  %idxprom18 = sext i32 %25 to i64, !dbg !1231
  %arrayidx19 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_path, i64 0, i64 %idxprom18, !dbg !1231
  %ptr = getelementptr inbounds %struct.buffer, ptr %arrayidx19, i32 0, i32 0, !dbg !1231
  %26 = load ptr, ptr %ptr, align 8, !dbg !1231, !tbaa !677
  %27 = load ptr, ptr %p.addr, align 8, !dbg !1231, !tbaa !631
  %cache_path20 = getelementptr inbounds %struct.plugin_data, ptr %27, i32 0, i32 8, !dbg !1231
  %28 = load i32, ptr %cached, align 4, !dbg !1231, !tbaa !851
  %idxprom21 = sext i32 %28 to i64, !dbg !1231
  %arrayidx22 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_path20, i64 0, i64 %idxprom21, !dbg !1231
  %call23 = call i32 @buffer_clen(ptr noundef %arrayidx22) #13, !dbg !1231
  %conv = zext i32 %call23 to i64, !dbg !1231
  %29 = load ptr, ptr %p.addr, align 8, !dbg !1232, !tbaa !631
  %conf24 = getelementptr inbounds %struct.plugin_data, ptr %29, i32 0, i32 5, !dbg !1232
  %path = getelementptr inbounds %struct.plugin_config, ptr %conf24, i32 0, i32 2, !dbg !1232
  %30 = load ptr, ptr %path, align 8, !dbg !1232, !tbaa !745
  %ptr25 = getelementptr inbounds %struct.buffer, ptr %30, i32 0, i32 0, !dbg !1232
  %31 = load ptr, ptr %ptr25, align 8, !dbg !1232, !tbaa !677
  %32 = load ptr, ptr %p.addr, align 8, !dbg !1232, !tbaa !631
  %conf26 = getelementptr inbounds %struct.plugin_data, ptr %32, i32 0, i32 5, !dbg !1232
  %path27 = getelementptr inbounds %struct.plugin_config, ptr %conf26, i32 0, i32 2, !dbg !1232
  %33 = load ptr, ptr %path27, align 8, !dbg !1232, !tbaa !745
  %call28 = call i32 @buffer_clen(ptr noundef %33) #13, !dbg !1232
  %conv29 = zext i32 %call28 to i64, !dbg !1232
  call void @buffer_copy_path_len2(ptr noundef %23, ptr noundef %26, i64 noundef %conv, ptr noundef %31, i64 noundef %conv29), !dbg !1233
  br label %if.end84, !dbg !1234

if.else:                                          ; preds = %for.end
  %arraydecay30 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1235
  %call31 = call ptr @getpwnam(ptr noundef %arraydecay30), !dbg !1236
  store ptr %call31, ptr %pwd, align 8, !dbg !1237, !tbaa !631
  %tobool32 = icmp ne ptr %call31, null, !dbg !1237
  br i1 %tobool32, label %if.then33, label %if.else82, !dbg !1238

if.then33:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %plen) #12, !dbg !1239
  tail call void @llvm.dbg.declare(metadata ptr %plen, metadata !1135, metadata !DIExpression()), !dbg !1240
  %34 = load ptr, ptr %pwd, align 8, !dbg !1241, !tbaa !631
  %pw_dir = getelementptr inbounds %struct.passwd, ptr %34, i32 0, i32 5, !dbg !1242
  %35 = load ptr, ptr %pw_dir, align 8, !dbg !1242, !tbaa !1243
  %call34 = call i64 @strlen(ptr noundef %35) #13, !dbg !1245
  store i64 %call34, ptr %plen, align 8, !dbg !1240, !tbaa !777
  %36 = load ptr, ptr %b, align 8, !dbg !1246, !tbaa !631
  %37 = load ptr, ptr %pwd, align 8, !dbg !1247, !tbaa !631
  %pw_dir35 = getelementptr inbounds %struct.passwd, ptr %37, i32 0, i32 5, !dbg !1248
  %38 = load ptr, ptr %pw_dir35, align 8, !dbg !1248, !tbaa !1243
  %39 = load i64, ptr %plen, align 8, !dbg !1249, !tbaa !777
  %40 = load ptr, ptr %p.addr, align 8, !dbg !1250, !tbaa !631
  %conf36 = getelementptr inbounds %struct.plugin_data, ptr %40, i32 0, i32 5, !dbg !1250
  %path37 = getelementptr inbounds %struct.plugin_config, ptr %conf36, i32 0, i32 2, !dbg !1250
  %41 = load ptr, ptr %path37, align 8, !dbg !1250, !tbaa !745
  %ptr38 = getelementptr inbounds %struct.buffer, ptr %41, i32 0, i32 0, !dbg !1250
  %42 = load ptr, ptr %ptr38, align 8, !dbg !1250, !tbaa !677
  %43 = load ptr, ptr %p.addr, align 8, !dbg !1250, !tbaa !631
  %conf39 = getelementptr inbounds %struct.plugin_data, ptr %43, i32 0, i32 5, !dbg !1250
  %path40 = getelementptr inbounds %struct.plugin_config, ptr %conf39, i32 0, i32 2, !dbg !1250
  %44 = load ptr, ptr %path40, align 8, !dbg !1250, !tbaa !745
  %call41 = call i32 @buffer_clen(ptr noundef %44) #13, !dbg !1250
  %conv42 = zext i32 %call41 to i64, !dbg !1250
  call void @buffer_copy_path_len2(ptr noundef %36, ptr noundef %38, i64 noundef %39, ptr noundef %42, i64 noundef %conv42), !dbg !1251
  %45 = load ptr, ptr %b, align 8, !dbg !1252, !tbaa !631
  %call43 = call i32 @stat_cache_path_isdir(ptr noundef %45), !dbg !1254
  %tobool44 = icmp ne i32 %call43, 0, !dbg !1254
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !1255

if.then45:                                        ; preds = %if.then33
  store i32 0, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !1256

if.end46:                                         ; preds = %if.then33
  store i32 0, ptr %cached, align 4, !dbg !1258, !tbaa !851
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache_ts47) #12, !dbg !1259
  tail call void @llvm.dbg.declare(metadata ptr %cache_ts47, metadata !1139, metadata !DIExpression()), !dbg !1260
  %46 = load ptr, ptr %p.addr, align 8, !dbg !1261, !tbaa !631
  %cache_ts48 = getelementptr inbounds %struct.plugin_data, ptr %46, i32 0, i32 6, !dbg !1262
  %arrayidx49 = getelementptr inbounds [2 x i64], ptr %cache_ts48, i64 0, i64 0, !dbg !1261
  %47 = load i64, ptr %arrayidx49, align 8, !dbg !1261, !tbaa !777
  store i64 %47, ptr %cache_ts47, align 8, !dbg !1260, !tbaa !777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i50) #12, !dbg !1263
  tail call void @llvm.dbg.declare(metadata ptr %i50, metadata !1140, metadata !DIExpression()), !dbg !1264
  store i32 1, ptr %i50, align 4, !dbg !1264, !tbaa !851
  br label %for.cond51, !dbg !1263

for.cond51:                                       ; preds = %for.inc66, %if.end46
  %48 = load i32, ptr %i50, align 4, !dbg !1265, !tbaa !851
  %cmp52 = icmp slt i32 %48, 2, !dbg !1267
  br i1 %cmp52, label %for.body55, label %for.cond.cleanup54, !dbg !1268

for.cond.cleanup54:                               ; preds = %for.cond51
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i50) #12, !dbg !1269
  br label %for.end69

for.body55:                                       ; preds = %for.cond51
  %49 = load i64, ptr %cache_ts47, align 8, !dbg !1270, !tbaa !777
  %50 = load ptr, ptr %p.addr, align 8, !dbg !1273, !tbaa !631
  %cache_ts56 = getelementptr inbounds %struct.plugin_data, ptr %50, i32 0, i32 6, !dbg !1274
  %51 = load i32, ptr %i50, align 4, !dbg !1275, !tbaa !851
  %idxprom57 = sext i32 %51 to i64, !dbg !1273
  %arrayidx58 = getelementptr inbounds [2 x i64], ptr %cache_ts56, i64 0, i64 %idxprom57, !dbg !1273
  %52 = load i64, ptr %arrayidx58, align 8, !dbg !1273, !tbaa !777
  %cmp59 = icmp sgt i64 %49, %52, !dbg !1276
  br i1 %cmp59, label %if.then61, label %if.end65, !dbg !1277

if.then61:                                        ; preds = %for.body55
  %53 = load ptr, ptr %p.addr, align 8, !dbg !1278, !tbaa !631
  %cache_ts62 = getelementptr inbounds %struct.plugin_data, ptr %53, i32 0, i32 6, !dbg !1280
  %54 = load i32, ptr %i50, align 4, !dbg !1281, !tbaa !851
  %idxprom63 = sext i32 %54 to i64, !dbg !1278
  %arrayidx64 = getelementptr inbounds [2 x i64], ptr %cache_ts62, i64 0, i64 %idxprom63, !dbg !1278
  %55 = load i64, ptr %arrayidx64, align 8, !dbg !1278, !tbaa !777
  store i64 %55, ptr %cache_ts47, align 8, !dbg !1282, !tbaa !777
  %56 = load i32, ptr %i50, align 4, !dbg !1283, !tbaa !851
  store i32 %56, ptr %cached, align 4, !dbg !1284, !tbaa !851
  br label %if.end65, !dbg !1285

if.end65:                                         ; preds = %if.then61, %for.body55
  br label %for.inc66, !dbg !1286

for.inc66:                                        ; preds = %if.end65
  %57 = load i32, ptr %i50, align 4, !dbg !1287, !tbaa !851
  %inc67 = add nsw i32 %57, 1, !dbg !1287
  store i32 %inc67, ptr %i50, align 4, !dbg !1287, !tbaa !851
  br label %for.cond51, !dbg !1269, !llvm.loop !1288

for.end69:                                        ; preds = %for.cond.cleanup54
  %58 = load i64, ptr %cur_ts, align 8, !dbg !1290, !tbaa !777
  %59 = load ptr, ptr %p.addr, align 8, !dbg !1291, !tbaa !631
  %cache_ts70 = getelementptr inbounds %struct.plugin_data, ptr %59, i32 0, i32 6, !dbg !1292
  %60 = load i32, ptr %cached, align 4, !dbg !1293, !tbaa !851
  %idxprom71 = sext i32 %60 to i64, !dbg !1291
  %arrayidx72 = getelementptr inbounds [2 x i64], ptr %cache_ts70, i64 0, i64 %idxprom71, !dbg !1291
  store i64 %58, ptr %arrayidx72, align 8, !dbg !1294, !tbaa !777
  %61 = load ptr, ptr %p.addr, align 8, !dbg !1295, !tbaa !631
  %cache_path73 = getelementptr inbounds %struct.plugin_data, ptr %61, i32 0, i32 8, !dbg !1296
  %62 = load i32, ptr %cached, align 4, !dbg !1297, !tbaa !851
  %idxprom74 = sext i32 %62 to i64, !dbg !1295
  %arrayidx75 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_path73, i64 0, i64 %idxprom74, !dbg !1295
  %63 = load ptr, ptr %b, align 8, !dbg !1298, !tbaa !631
  %ptr76 = getelementptr inbounds %struct.buffer, ptr %63, i32 0, i32 0, !dbg !1299
  %64 = load ptr, ptr %ptr76, align 8, !dbg !1299, !tbaa !677
  %65 = load i64, ptr %plen, align 8, !dbg !1300, !tbaa !777
  call void @buffer_copy_string_len(ptr noundef %arrayidx75, ptr noundef %64, i64 noundef %65), !dbg !1301
  %66 = load ptr, ptr %p.addr, align 8, !dbg !1302, !tbaa !631
  %cache_user77 = getelementptr inbounds %struct.plugin_data, ptr %66, i32 0, i32 7, !dbg !1303
  %67 = load i32, ptr %cached, align 4, !dbg !1304, !tbaa !851
  %idxprom78 = sext i32 %67 to i64, !dbg !1302
  %arrayidx79 = getelementptr inbounds [2 x %struct.buffer], ptr %cache_user77, i64 0, i64 %idxprom78, !dbg !1302
  %arraydecay80 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1305
  %68 = load i64, ptr %ulen.addr, align 8, !dbg !1306, !tbaa !777
  call void @buffer_copy_string_len(ptr noundef %arrayidx79, ptr noundef %arraydecay80, i64 noundef %68), !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache_ts47) #12, !dbg !1308
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1308
  br label %cleanup81, !dbg !1308

cleanup81:                                        ; preds = %for.end69, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %plen) #12, !dbg !1308
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup85 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup81
  br label %if.end83, !dbg !1309

if.else82:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !1310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup85, !dbg !1310

if.end83:                                         ; preds = %cleanup.cont
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1311
  br label %cleanup85, !dbg !1311

cleanup85:                                        ; preds = %if.end84, %if.else82, %cleanup81
  call void @llvm.lifetime.end.p0(i64 8, ptr %pwd) #12, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 4, ptr %cache_sz) #12, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 4, ptr %cached) #12, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_ts) #12, !dbg !1311
  %cleanup.dest89 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest89, label %cleanup198 [
    i32 0, label %cleanup.cont90
  ]

cleanup.cont90:                                   ; preds = %cleanup85
  br label %if.end182, !dbg !1312

if.else91:                                        ; preds = %if.end
  %69 = load i64, ptr %ulen.addr, align 8, !dbg !1313, !tbaa !777
  %cmp92 = icmp ule i64 %69, 2, !dbg !1315
  br i1 %cmp92, label %land.lhs.true94, label %if.end107, !dbg !1316

land.lhs.true94:                                  ; preds = %if.else91
  %arrayidx95 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1317
  %70 = load i8, ptr %arrayidx95, align 16, !dbg !1317, !tbaa !718
  %conv96 = sext i8 %70 to i32, !dbg !1317
  %cmp97 = icmp eq i32 %conv96, 46, !dbg !1318
  br i1 %cmp97, label %land.lhs.true99, label %if.end107, !dbg !1319

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %71 = load i64, ptr %ulen.addr, align 8, !dbg !1320, !tbaa !777
  %cmp100 = icmp eq i64 1, %71, !dbg !1321
  br i1 %cmp100, label %if.then106, label %lor.lhs.false, !dbg !1322

lor.lhs.false:                                    ; preds = %land.lhs.true99
  %arrayidx102 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 1, !dbg !1323
  %72 = load i8, ptr %arrayidx102, align 1, !dbg !1323, !tbaa !718
  %conv103 = sext i8 %72 to i32, !dbg !1323
  %cmp104 = icmp eq i32 %conv103, 46, !dbg !1324
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !1325

if.then106:                                       ; preds = %lor.lhs.false, %land.lhs.true99
  store i32 0, ptr %retval, align 4, !dbg !1326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !1326

if.end107:                                        ; preds = %lor.lhs.false, %land.lhs.true94, %if.else91
  call void @llvm.lifetime.start.p0(i64 8, ptr %i108) #12, !dbg !1328
  tail call void @llvm.dbg.declare(metadata ptr %i108, metadata !1142, metadata !DIExpression()), !dbg !1329
  store i64 0, ptr %i108, align 8, !dbg !1329, !tbaa !777
  br label %for.cond109, !dbg !1328

for.cond109:                                      ; preds = %for.inc132, %if.end107
  %73 = load i64, ptr %i108, align 8, !dbg !1330, !tbaa !777
  %74 = load i64, ptr %ulen.addr, align 8, !dbg !1331, !tbaa !777
  %cmp110 = icmp ult i64 %73, %74, !dbg !1332
  br i1 %cmp110, label %for.body113, label %for.cond.cleanup112, !dbg !1333

for.cond.cleanup112:                              ; preds = %for.cond109
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup134, !dbg !1333

for.body113:                                      ; preds = %for.cond109
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #12, !dbg !1334
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !1145, metadata !DIExpression()), !dbg !1335
  %75 = load i64, ptr %i108, align 8, !dbg !1336, !tbaa !777
  %arrayidx114 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 %75, !dbg !1337
  %76 = load i8, ptr %arrayidx114, align 1, !dbg !1337, !tbaa !718
  %conv115 = sext i8 %76 to i32, !dbg !1337
  store i32 %conv115, ptr %c, align 4, !dbg !1335, !tbaa !851
  %77 = load i32, ptr %c, align 4, !dbg !1338, !tbaa !851
  %call116 = call i32 @light_isalnum(i32 noundef %77) #13, !dbg !1340
  %tobool117 = icmp ne i32 %call116, 0, !dbg !1340
  br i1 %tobool117, label %if.end128, label %lor.lhs.false118, !dbg !1341

lor.lhs.false118:                                 ; preds = %for.body113
  %78 = load i32, ptr %c, align 4, !dbg !1342, !tbaa !851
  %cmp119 = icmp eq i32 %78, 45, !dbg !1343
  br i1 %cmp119, label %if.end128, label %lor.lhs.false121, !dbg !1344

lor.lhs.false121:                                 ; preds = %lor.lhs.false118
  %79 = load i32, ptr %c, align 4, !dbg !1345, !tbaa !851
  %cmp122 = icmp eq i32 %79, 95, !dbg !1346
  br i1 %cmp122, label %if.end128, label %lor.lhs.false124, !dbg !1347

lor.lhs.false124:                                 ; preds = %lor.lhs.false121
  %80 = load i32, ptr %c, align 4, !dbg !1348, !tbaa !851
  %cmp125 = icmp eq i32 %80, 46, !dbg !1349
  br i1 %cmp125, label %if.end128, label %if.then127, !dbg !1350

if.then127:                                       ; preds = %lor.lhs.false124
  store i32 0, ptr %retval, align 4, !dbg !1351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup129, !dbg !1351

if.end128:                                        ; preds = %lor.lhs.false124, %lor.lhs.false121, %lor.lhs.false118, %for.body113
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1353
  br label %cleanup129, !dbg !1353

cleanup129:                                       ; preds = %if.end128, %if.then127
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #12, !dbg !1353
  %cleanup.dest130 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest130, label %cleanup134 [
    i32 0, label %cleanup.cont131
  ]

cleanup.cont131:                                  ; preds = %cleanup129
  br label %for.inc132, !dbg !1354

for.inc132:                                       ; preds = %cleanup.cont131
  %81 = load i64, ptr %i108, align 8, !dbg !1355, !tbaa !777
  %inc133 = add i64 %81, 1, !dbg !1355
  store i64 %inc133, ptr %i108, align 8, !dbg !1355, !tbaa !777
  br label %for.cond109, !dbg !1356, !llvm.loop !1357

cleanup134:                                       ; preds = %cleanup129, %for.cond.cleanup112
  call void @llvm.lifetime.end.p0(i64 8, ptr %i108) #12, !dbg !1356
  %cleanup.dest135 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest135, label %cleanup198 [
    i32 8, label %for.end136
  ]

for.end136:                                       ; preds = %cleanup134
  %82 = load ptr, ptr %r.addr, align 8, !dbg !1359, !tbaa !631
  %conf137 = getelementptr inbounds %struct.request_st, ptr %82, i32 0, i32 17, !dbg !1360
  %force_lowercase_filenames = getelementptr inbounds %struct.request_config, ptr %conf137, i32 0, i32 14, !dbg !1361
  %bf.load = load i32, ptr %force_lowercase_filenames, align 8, !dbg !1361
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !1361
  %bf.clear = and i32 %bf.lshr, 3, !dbg !1361
  %tobool138 = icmp ne i32 %bf.clear, 0, !dbg !1359
  br i1 %tobool138, label %if.then139, label %if.end160, !dbg !1362

if.then139:                                       ; preds = %for.end136
  call void @llvm.lifetime.start.p0(i64 8, ptr %i140) #12, !dbg !1363
  tail call void @llvm.dbg.declare(metadata ptr %i140, metadata !1148, metadata !DIExpression()), !dbg !1364
  store i64 0, ptr %i140, align 8, !dbg !1364, !tbaa !777
  br label %for.cond141, !dbg !1363

for.cond141:                                      ; preds = %for.inc156, %if.then139
  %83 = load i64, ptr %i140, align 8, !dbg !1365, !tbaa !777
  %84 = load i64, ptr %ulen.addr, align 8, !dbg !1367, !tbaa !777
  %cmp142 = icmp ult i64 %83, %84, !dbg !1368
  br i1 %cmp142, label %for.body145, label %for.cond.cleanup144, !dbg !1369

for.cond.cleanup144:                              ; preds = %for.cond141
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i140) #12, !dbg !1370
  br label %for.end159

for.body145:                                      ; preds = %for.cond141
  %85 = load i64, ptr %i140, align 8, !dbg !1371, !tbaa !777
  %arrayidx146 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 %85, !dbg !1371
  %86 = load i8, ptr %arrayidx146, align 1, !dbg !1371, !tbaa !718
  %conv147 = sext i8 %86 to i32, !dbg !1371
  %sub148 = sub i32 %conv147, 65, !dbg !1371
  %cmp149 = icmp ule i32 %sub148, 25, !dbg !1371
  br i1 %cmp149, label %if.then151, label %if.end155, !dbg !1374

if.then151:                                       ; preds = %for.body145
  %87 = load i64, ptr %i140, align 8, !dbg !1375, !tbaa !777
  %arrayidx152 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 %87, !dbg !1376
  %88 = load i8, ptr %arrayidx152, align 1, !dbg !1377, !tbaa !718
  %conv153 = sext i8 %88 to i32, !dbg !1377
  %or = or i32 %conv153, 32, !dbg !1377
  %conv154 = trunc i32 %or to i8, !dbg !1377
  store i8 %conv154, ptr %arrayidx152, align 1, !dbg !1377, !tbaa !718
  br label %if.end155, !dbg !1376

if.end155:                                        ; preds = %if.then151, %for.body145
  br label %for.inc156, !dbg !1378

for.inc156:                                       ; preds = %if.end155
  %89 = load i64, ptr %i140, align 8, !dbg !1379, !tbaa !777
  %inc157 = add i64 %89, 1, !dbg !1379
  store i64 %inc157, ptr %i140, align 8, !dbg !1379, !tbaa !777
  br label %for.cond141, !dbg !1370, !llvm.loop !1380

for.end159:                                       ; preds = %for.cond.cleanup144
  br label %if.end160, !dbg !1382

if.end160:                                        ; preds = %for.end159, %for.end136
  %90 = load ptr, ptr %b, align 8, !dbg !1383, !tbaa !631
  %91 = load ptr, ptr %p.addr, align 8, !dbg !1384, !tbaa !631
  %conf161 = getelementptr inbounds %struct.plugin_data, ptr %91, i32 0, i32 5, !dbg !1385
  %basepath162 = getelementptr inbounds %struct.plugin_config, ptr %conf161, i32 0, i32 3, !dbg !1386
  %92 = load ptr, ptr %basepath162, align 8, !dbg !1386, !tbaa !1178
  call void @buffer_copy_buffer(ptr noundef %90, ptr noundef %92), !dbg !1387
  %93 = load ptr, ptr %p.addr, align 8, !dbg !1388, !tbaa !631
  %conf163 = getelementptr inbounds %struct.plugin_data, ptr %93, i32 0, i32 5, !dbg !1390
  %letterhomes = getelementptr inbounds %struct.plugin_config, ptr %conf163, i32 0, i32 4, !dbg !1391
  %94 = load i16, ptr %letterhomes, align 8, !dbg !1391, !tbaa !1392
  %tobool164 = icmp ne i16 %94, 0, !dbg !1388
  br i1 %tobool164, label %if.then165, label %if.end173, !dbg !1393

if.then165:                                       ; preds = %if.end160
  %arrayidx166 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1394
  %95 = load i8, ptr %arrayidx166, align 16, !dbg !1394, !tbaa !718
  %conv167 = sext i8 %95 to i32, !dbg !1394
  %cmp168 = icmp eq i32 %conv167, 46, !dbg !1397
  br i1 %cmp168, label %if.then170, label %if.end171, !dbg !1398

if.then170:                                       ; preds = %if.then165
  store i32 0, ptr %retval, align 4, !dbg !1399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !1399

if.end171:                                        ; preds = %if.then165
  %96 = load ptr, ptr %b, align 8, !dbg !1400, !tbaa !631
  %arraydecay172 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1401
  call void @buffer_append_path_len(ptr noundef %96, ptr noundef %arraydecay172, i64 noundef 1), !dbg !1402
  br label %if.end173, !dbg !1403

if.end173:                                        ; preds = %if.end171, %if.end160
  %97 = load ptr, ptr %b, align 8, !dbg !1404, !tbaa !631
  %arraydecay174 = getelementptr inbounds [256 x i8], ptr %u, i64 0, i64 0, !dbg !1405
  %98 = load i64, ptr %ulen.addr, align 8, !dbg !1406, !tbaa !777
  call void @buffer_append_path_len(ptr noundef %97, ptr noundef %arraydecay174, i64 noundef %98), !dbg !1407
  %99 = load ptr, ptr %b, align 8, !dbg !1408, !tbaa !631
  %100 = load ptr, ptr %p.addr, align 8, !dbg !1409, !tbaa !631
  %conf175 = getelementptr inbounds %struct.plugin_data, ptr %100, i32 0, i32 5, !dbg !1409
  %path176 = getelementptr inbounds %struct.plugin_config, ptr %conf175, i32 0, i32 2, !dbg !1409
  %101 = load ptr, ptr %path176, align 8, !dbg !1409, !tbaa !745
  %ptr177 = getelementptr inbounds %struct.buffer, ptr %101, i32 0, i32 0, !dbg !1409
  %102 = load ptr, ptr %ptr177, align 8, !dbg !1409, !tbaa !677
  %103 = load ptr, ptr %p.addr, align 8, !dbg !1409, !tbaa !631
  %conf178 = getelementptr inbounds %struct.plugin_data, ptr %103, i32 0, i32 5, !dbg !1409
  %path179 = getelementptr inbounds %struct.plugin_config, ptr %conf178, i32 0, i32 2, !dbg !1409
  %104 = load ptr, ptr %path179, align 8, !dbg !1409, !tbaa !745
  %call180 = call i32 @buffer_clen(ptr noundef %104) #13, !dbg !1409
  %conv181 = zext i32 %call180 to i64, !dbg !1409
  call void @buffer_append_path_len(ptr noundef %99, ptr noundef %102, i64 noundef %conv181), !dbg !1410
  br label %if.end182

if.end182:                                        ; preds = %if.end173, %cleanup.cont90
  %105 = load ptr, ptr %r.addr, align 8, !dbg !1411, !tbaa !631
  %physical = getelementptr inbounds %struct.request_st, ptr %105, i32 0, i32 22, !dbg !1412
  %basedir = getelementptr inbounds %struct.physical, ptr %physical, i32 0, i32 1, !dbg !1413
  %106 = load ptr, ptr %b, align 8, !dbg !1414, !tbaa !631
  call void @buffer_copy_buffer(ptr noundef %basedir, ptr noundef %106), !dbg !1415
  %107 = load ptr, ptr %r.addr, align 8, !dbg !1416, !tbaa !631
  %physical183 = getelementptr inbounds %struct.request_st, ptr %107, i32 0, i32 22, !dbg !1417
  %path184 = getelementptr inbounds %struct.physical, ptr %physical183, i32 0, i32 0, !dbg !1418
  %108 = load ptr, ptr %b, align 8, !dbg !1419, !tbaa !631
  call void @buffer_copy_buffer(ptr noundef %path184, ptr noundef %108), !dbg !1420
  %109 = load ptr, ptr %r.addr, align 8, !dbg !1421, !tbaa !631
  %physical185 = getelementptr inbounds %struct.request_st, ptr %109, i32 0, i32 22, !dbg !1422
  %path186 = getelementptr inbounds %struct.physical, ptr %physical185, i32 0, i32 0, !dbg !1423
  call void @buffer_append_slash(ptr noundef %path186), !dbg !1424
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel_url) #12, !dbg !1425
  tail call void @llvm.dbg.declare(metadata ptr %rel_url, metadata !1152, metadata !DIExpression()), !dbg !1426
  %110 = load ptr, ptr %r.addr, align 8, !dbg !1427, !tbaa !631
  %physical187 = getelementptr inbounds %struct.request_st, ptr %110, i32 0, i32 22, !dbg !1429
  %rel_path = getelementptr inbounds %struct.physical, ptr %physical187, i32 0, i32 3, !dbg !1430
  %ptr188 = getelementptr inbounds %struct.buffer, ptr %rel_path, i32 0, i32 0, !dbg !1431
  %111 = load ptr, ptr %ptr188, align 8, !dbg !1431, !tbaa !1432
  %add.ptr = getelementptr inbounds i8, ptr %111, i64 2, !dbg !1433
  %call189 = call ptr @strchr(ptr noundef %add.ptr, i32 noundef 47) #13, !dbg !1434
  store ptr %call189, ptr %rel_url, align 8, !dbg !1435, !tbaa !631
  %cmp190 = icmp ne ptr null, %call189, !dbg !1436
  br i1 %cmp190, label %if.then192, label %if.end196, !dbg !1437

if.then192:                                       ; preds = %if.end182
  %112 = load ptr, ptr %r.addr, align 8, !dbg !1438, !tbaa !631
  %physical193 = getelementptr inbounds %struct.request_st, ptr %112, i32 0, i32 22, !dbg !1440
  %path194 = getelementptr inbounds %struct.physical, ptr %physical193, i32 0, i32 0, !dbg !1441
  %113 = load ptr, ptr %rel_url, align 8, !dbg !1442, !tbaa !631
  %add.ptr195 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !1443
  call void @buffer_append_string(ptr noundef %path194, ptr noundef %add.ptr195), !dbg !1444
  br label %if.end196, !dbg !1445

if.end196:                                        ; preds = %if.then192, %if.end182
  store i32 0, ptr %retval, align 4, !dbg !1446
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel_url) #12, !dbg !1447
  br label %cleanup198

cleanup198:                                       ; preds = %if.end196, %if.then170, %cleanup134, %if.then106, %cleanup85
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #12, !dbg !1447
  br label %cleanup199

cleanup199:                                       ; preds = %cleanup198, %if.then
  call void @llvm.lifetime.end.p0(i64 256, ptr %u) #12, !dbg !1447
  %114 = load i32, ptr %retval, align 4, !dbg !1447
  ret i32 %114, !dbg !1447
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare !dbg !1448 i32 @config_check_cond(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @mod_userdir_merge_config(ptr noundef %pconf, ptr noundef %cpv) #1 !dbg !1449 {
entry:
  %pconf.addr = alloca ptr, align 8
  %cpv.addr = alloca ptr, align 8
  store ptr %pconf, ptr %pconf.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %pconf.addr, metadata !1455, metadata !DIExpression()), !dbg !1457
  store ptr %cpv, ptr %cpv.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %cpv.addr, metadata !1456, metadata !DIExpression()), !dbg !1458
  br label %do.body, !dbg !1459

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %pconf.addr, align 8, !dbg !1460, !tbaa !631
  %1 = load ptr, ptr %cpv.addr, align 8, !dbg !1462, !tbaa !631
  call void @mod_userdir_merge_config_cpv(ptr noundef %0, ptr noundef %1), !dbg !1463
  br label %do.cond, !dbg !1464

do.cond:                                          ; preds = %do.body
  %2 = load ptr, ptr %cpv.addr, align 8, !dbg !1465, !tbaa !631
  %incdec.ptr = getelementptr inbounds %struct.config_plugin_value, ptr %2, i32 1, !dbg !1465
  store ptr %incdec.ptr, ptr %cpv.addr, align 8, !dbg !1465, !tbaa !631
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %incdec.ptr, i32 0, i32 0, !dbg !1466
  %3 = load i32, ptr %k_id, align 8, !dbg !1466, !tbaa !873
  %cmp = icmp ne i32 %3, -1, !dbg !1467
  br i1 %cmp, label %do.body, label %do.end, !dbg !1464, !llvm.loop !1468

do.end:                                           ; preds = %do.cond
  ret void, !dbg !1470
}

; Function Attrs: nounwind uwtable
define internal void @mod_userdir_merge_config_cpv(ptr noundef %pconf, ptr noundef %cpv) #1 !dbg !1471 {
entry:
  %pconf.addr = alloca ptr, align 8
  %cpv.addr = alloca ptr, align 8
  store ptr %pconf, ptr %pconf.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %pconf.addr, metadata !1476, metadata !DIExpression()), !dbg !1478
  store ptr %cpv, ptr %cpv.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %cpv.addr, metadata !1477, metadata !DIExpression()), !dbg !1479
  %0 = load ptr, ptr %cpv.addr, align 8, !dbg !1480, !tbaa !631
  %k_id = getelementptr inbounds %struct.config_plugin_value, ptr %0, i32 0, i32 0, !dbg !1481
  %1 = load i32, ptr %k_id, align 8, !dbg !1481, !tbaa !873
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
  ], !dbg !1482

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %cpv.addr, align 8, !dbg !1483, !tbaa !631
  %v = getelementptr inbounds %struct.config_plugin_value, ptr %2, i32 0, i32 2, !dbg !1485
  %3 = load ptr, ptr %v, align 8, !dbg !1486, !tbaa !718
  %4 = load ptr, ptr %pconf.addr, align 8, !dbg !1487, !tbaa !631
  %path = getelementptr inbounds %struct.plugin_config, ptr %4, i32 0, i32 2, !dbg !1488
  store ptr %3, ptr %path, align 8, !dbg !1489, !tbaa !1490
  br label %sw.epilog, !dbg !1491

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %cpv.addr, align 8, !dbg !1492, !tbaa !631
  %v2 = getelementptr inbounds %struct.config_plugin_value, ptr %5, i32 0, i32 2, !dbg !1493
  %6 = load ptr, ptr %v2, align 8, !dbg !1494, !tbaa !718
  %7 = load ptr, ptr %pconf.addr, align 8, !dbg !1495, !tbaa !631
  %exclude_user = getelementptr inbounds %struct.plugin_config, ptr %7, i32 0, i32 0, !dbg !1496
  store ptr %6, ptr %exclude_user, align 8, !dbg !1497, !tbaa !1498
  br label %sw.epilog, !dbg !1499

sw.bb3:                                           ; preds = %entry
  %8 = load ptr, ptr %cpv.addr, align 8, !dbg !1500, !tbaa !631
  %v4 = getelementptr inbounds %struct.config_plugin_value, ptr %8, i32 0, i32 2, !dbg !1501
  %9 = load ptr, ptr %v4, align 8, !dbg !1502, !tbaa !718
  %10 = load ptr, ptr %pconf.addr, align 8, !dbg !1503, !tbaa !631
  %include_user = getelementptr inbounds %struct.plugin_config, ptr %10, i32 0, i32 1, !dbg !1504
  store ptr %9, ptr %include_user, align 8, !dbg !1505, !tbaa !1506
  br label %sw.epilog, !dbg !1507

sw.bb5:                                           ; preds = %entry
  %11 = load ptr, ptr %cpv.addr, align 8, !dbg !1508, !tbaa !631
  %v6 = getelementptr inbounds %struct.config_plugin_value, ptr %11, i32 0, i32 2, !dbg !1509
  %12 = load ptr, ptr %v6, align 8, !dbg !1510, !tbaa !718
  %13 = load ptr, ptr %pconf.addr, align 8, !dbg !1511, !tbaa !631
  %basepath = getelementptr inbounds %struct.plugin_config, ptr %13, i32 0, i32 3, !dbg !1512
  store ptr %12, ptr %basepath, align 8, !dbg !1513, !tbaa !1514
  br label %sw.epilog, !dbg !1515

sw.bb7:                                           ; preds = %entry
  %14 = load ptr, ptr %cpv.addr, align 8, !dbg !1516, !tbaa !631
  %v8 = getelementptr inbounds %struct.config_plugin_value, ptr %14, i32 0, i32 2, !dbg !1517
  %15 = load i32, ptr %v8, align 8, !dbg !1518, !tbaa !718
  %conv = trunc i32 %15 to i16, !dbg !1516
  %16 = load ptr, ptr %pconf.addr, align 8, !dbg !1519, !tbaa !631
  %letterhomes = getelementptr inbounds %struct.plugin_config, ptr %16, i32 0, i32 4, !dbg !1520
  store i16 %conv, ptr %letterhomes, align 8, !dbg !1521, !tbaa !1522
  br label %sw.epilog, !dbg !1523

sw.bb9:                                           ; preds = %entry
  %17 = load ptr, ptr %cpv.addr, align 8, !dbg !1524, !tbaa !631
  %v10 = getelementptr inbounds %struct.config_plugin_value, ptr %17, i32 0, i32 2, !dbg !1525
  %18 = load i32, ptr %v10, align 8, !dbg !1526, !tbaa !718
  %conv11 = trunc i32 %18 to i16, !dbg !1524
  %19 = load ptr, ptr %pconf.addr, align 8, !dbg !1527, !tbaa !631
  %active = getelementptr inbounds %struct.plugin_config, ptr %19, i32 0, i32 5, !dbg !1528
  store i16 %conv11, ptr %active, align 2, !dbg !1529, !tbaa !1530
  br label %sw.epilog, !dbg !1531

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1532

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  ret void, !dbg !1533
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1534 i32 @buffer_eq_slen(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1538 i32 @buffer_eq_icase_slen(ptr noundef, ptr noundef, i64 noundef) #5

declare !dbg !1539 void @buffer_copy_path_len2(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @buffer_clen(ptr noundef nonnull %b) #8 !dbg !1544 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1548, metadata !DIExpression()), !dbg !1549
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1550, !tbaa !631
  %used = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 1, !dbg !1551
  %1 = load i32, ptr %used, align 8, !dbg !1551, !tbaa !1206
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1552, !tbaa !631
  %used1 = getelementptr inbounds %struct.buffer, ptr %2, i32 0, i32 1, !dbg !1553
  %3 = load i32, ptr %used1, align 8, !dbg !1553, !tbaa !1206
  %cmp = icmp ne i32 0, %3, !dbg !1554
  %conv = zext i1 %cmp to i32, !dbg !1554
  %sub = sub i32 %1, %conv, !dbg !1555
  ret i32 %sub, !dbg !1556
}

declare !dbg !1557 ptr @getpwnam(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1560 i64 @strlen(ptr noundef) #5

declare !dbg !1563 i32 @stat_cache_path_isdir(ptr noundef) #2

declare !dbg !1566 void @buffer_copy_string_len(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @light_isalnum(i32 noundef %c) #8 !dbg !1569 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !851
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1573, metadata !DIExpression()), !dbg !1574
  %0 = load i32, ptr %c.addr, align 4, !dbg !1575, !tbaa !851
  %call = call i32 @light_isdigit(i32 noundef %0) #13, !dbg !1576
  %tobool = icmp ne i32 %call, 0, !dbg !1576
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1577

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !1578, !tbaa !851
  %call1 = call i32 @light_isalpha(i32 noundef %1) #13, !dbg !1579
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1577
  br label %lor.end, !dbg !1577

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !1577
  ret i32 %lor.ext, !dbg !1580
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @buffer_copy_buffer(ptr noalias noundef nonnull %b, ptr noalias noundef nonnull %src) #9 !dbg !1581 {
entry:
  %b.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1586, metadata !DIExpression()), !dbg !1588
  store ptr %src, ptr %src.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1587, metadata !DIExpression()), !dbg !1589
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1590, !tbaa !631
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1591, !tbaa !631
  %ptr = getelementptr inbounds %struct.buffer, ptr %1, i32 0, i32 0, !dbg !1591
  %2 = load ptr, ptr %ptr, align 8, !dbg !1591, !tbaa !677
  %3 = load ptr, ptr %src.addr, align 8, !dbg !1591, !tbaa !631
  %call = call i32 @buffer_clen(ptr noundef %3) #13, !dbg !1591
  %conv = zext i32 %call to i64, !dbg !1591
  call void @buffer_copy_string_len(ptr noundef %0, ptr noundef %2, i64 noundef %conv), !dbg !1592
  ret void, !dbg !1593
}

declare !dbg !1594 void @buffer_append_path_len(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @buffer_append_slash(ptr noundef nonnull %b) #9 !dbg !1595 {
entry:
  %b.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1599, metadata !DIExpression()), !dbg !1602
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !1603
  tail call void @llvm.dbg.declare(metadata ptr %len, metadata !1600, metadata !DIExpression()), !dbg !1604
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1605, !tbaa !631
  %call = call i32 @buffer_clen(ptr noundef %0) #13, !dbg !1606
  store i32 %call, ptr %len, align 4, !dbg !1604, !tbaa !851
  %1 = load i32, ptr %len, align 4, !dbg !1607, !tbaa !851
  %cmp = icmp ugt i32 %1, 0, !dbg !1609
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1610

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %b.addr, align 8, !dbg !1611, !tbaa !631
  %ptr = getelementptr inbounds %struct.buffer, ptr %2, i32 0, i32 0, !dbg !1612
  %3 = load ptr, ptr %ptr, align 8, !dbg !1612, !tbaa !677
  %4 = load i32, ptr %len, align 4, !dbg !1613, !tbaa !851
  %sub = sub i32 %4, 1, !dbg !1614
  %idxprom = zext i32 %sub to i64, !dbg !1611
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom, !dbg !1611
  %5 = load i8, ptr %arrayidx, align 1, !dbg !1611, !tbaa !718
  %conv = sext i8 %5 to i32, !dbg !1611
  %cmp1 = icmp ne i32 47, %conv, !dbg !1615
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1616

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %b.addr, align 8, !dbg !1617, !tbaa !631
  call void @buffer_append_char(ptr noundef %6, i8 noundef signext 47), !dbg !1618
  br label %if.end, !dbg !1618

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !1619
  ret void, !dbg !1619
}

declare !dbg !1620 void @buffer_append_string(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @light_isdigit(i32 noundef %c) #8 !dbg !1623 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !851
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1625, metadata !DIExpression()), !dbg !1626
  %0 = load i32, ptr %c.addr, align 4, !dbg !1627, !tbaa !851
  %sub = sub i32 %0, 48, !dbg !1628
  %cmp = icmp ule i32 %sub, 9, !dbg !1629
  %conv = zext i1 %cmp to i32, !dbg !1629
  ret i32 %conv, !dbg !1630
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @light_isalpha(i32 noundef %c) #8 !dbg !1631 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4, !tbaa !851
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1633, metadata !DIExpression()), !dbg !1634
  %0 = load i32, ptr %c.addr, align 4, !dbg !1635, !tbaa !851
  %or = or i32 %0, 32, !dbg !1636
  %sub = sub i32 %or, 97, !dbg !1637
  %cmp = icmp ule i32 %sub, 25, !dbg !1638
  %conv = zext i1 %cmp to i32, !dbg !1638
  ret i32 %conv, !dbg !1639
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @buffer_append_char(ptr noundef nonnull %b, i8 noundef signext %c) #9 !dbg !1640 {
entry:
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %b, ptr %b.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1644, metadata !DIExpression()), !dbg !1646
  store i8 %c, ptr %c.addr, align 1, !tbaa !718
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1645, metadata !DIExpression()), !dbg !1647
  %0 = load i8, ptr %c.addr, align 1, !dbg !1648, !tbaa !718
  %1 = load ptr, ptr %b.addr, align 8, !dbg !1649, !tbaa !631
  %call = call nonnull ptr @buffer_extend(ptr noundef %1, i64 noundef 1), !dbg !1650
  store i8 %0, ptr %call, align 1, !dbg !1651, !tbaa !718
  ret void, !dbg !1652
}

declare !dbg !1653 nonnull ptr @buffer_extend(ptr noundef, i64 noundef) #2

; Function Attrs: cold
declare !dbg !1657 i32 @config_plugin_values_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #10

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define internal i32 @buffer_is_blank(ptr noundef nonnull %b) #8 !dbg !1661 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !631
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !1663, metadata !DIExpression()), !dbg !1664
  %0 = load ptr, ptr %b.addr, align 8, !dbg !1665, !tbaa !631
  %used = getelementptr inbounds %struct.buffer, ptr %0, i32 0, i32 1, !dbg !1666
  %1 = load i32, ptr %used, align 8, !dbg !1666, !tbaa !1206
  %cmp = icmp ult i32 %1, 2, !dbg !1667
  %conv = zext i1 %cmp to i32, !dbg !1667
  ret i32 %conv, !dbg !1668
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #11

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!619, !620, !621, !622, !623}
!llvm.ident = !{!624}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "spack-src/src/mod_userdir.c", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "f4ef39291792b85ad0d08dd299cf1c3b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "cpk", scope: !9, file: !2, line: 91, type: !608, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "mod_userdir_set_defaults", scope: !2, file: !2, line: 90, type: !10, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !254)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !22, !25}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "handler_t", file: !13, line: 38, baseType: !14)
!13 = !DIFile(filename: "spack-src/src/base_decls.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "8960b8ee22f07d697e266aa4c1b4b9fa")
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "handler_t", file: !13, line: 31, baseType: !15, size: 32, elements: !16)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DIEnumerator(name: "HANDLER_GO_ON", value: 0)
!18 = !DIEnumerator(name: "HANDLER_FINISHED", value: 1)
!19 = !DIEnumerator(name: "HANDLER_COMEBACK", value: 2)
!20 = !DIEnumerator(name: "HANDLER_WAIT_FOR_EVENT", value: 3)
!21 = !DIEnumerator(name: "HANDLER_ERROR", value: 4)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "server", file: !13, line: 7, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "server", file: !13, line: 6, flags: DIFlagFwdDecl)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !27, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !182, globals: !221, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-src/src/mod_userdir.c", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q/spack-build-rpmcfxe/build", checksumkind: CSK_MD5, checksum: "f4ef39291792b85ad0d08dd299cf1c3b")
!28 = !{!14, !29, !43, !88, !94, !121, !129, !166}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 108, baseType: !15, size: 32, elements: !31)
!30 = !DIFile(filename: "spack-src/src/request.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "416cbf9145278ec22de51666187d6d5a")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "CON_STATE_CONNECT", value: 0)
!33 = !DIEnumerator(name: "CON_STATE_REQUEST_START", value: 1)
!34 = !DIEnumerator(name: "CON_STATE_READ", value: 2)
!35 = !DIEnumerator(name: "CON_STATE_REQUEST_END", value: 3)
!36 = !DIEnumerator(name: "CON_STATE_READ_POST", value: 4)
!37 = !DIEnumerator(name: "CON_STATE_HANDLE_REQUEST", value: 5)
!38 = !DIEnumerator(name: "CON_STATE_RESPONSE_START", value: 6)
!39 = !DIEnumerator(name: "CON_STATE_WRITE", value: 7)
!40 = !DIEnumerator(name: "CON_STATE_RESPONSE_END", value: 8)
!41 = !DIEnumerator(name: "CON_STATE_ERROR", value: 9)
!42 = !DIEnumerator(name: "CON_STATE_CLOSE", value: 10)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 17, baseType: !45, size: 32, elements: !46)
!44 = !DIFile(filename: "spack-src/src/http_kv.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "839af8f5796c73517231eb7758755092")
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!47 = !DIEnumerator(name: "HTTP_METHOD_PRI", value: -2)
!48 = !DIEnumerator(name: "HTTP_METHOD_UNSET", value: -1)
!49 = !DIEnumerator(name: "HTTP_METHOD_GET", value: 0)
!50 = !DIEnumerator(name: "HTTP_METHOD_HEAD", value: 1)
!51 = !DIEnumerator(name: "HTTP_METHOD_QUERY", value: 2)
!52 = !DIEnumerator(name: "HTTP_METHOD_POST", value: 3)
!53 = !DIEnumerator(name: "HTTP_METHOD_PUT", value: 4)
!54 = !DIEnumerator(name: "HTTP_METHOD_DELETE", value: 5)
!55 = !DIEnumerator(name: "HTTP_METHOD_CONNECT", value: 6)
!56 = !DIEnumerator(name: "HTTP_METHOD_OPTIONS", value: 7)
!57 = !DIEnumerator(name: "HTTP_METHOD_TRACE", value: 8)
!58 = !DIEnumerator(name: "HTTP_METHOD_ACL", value: 9)
!59 = !DIEnumerator(name: "HTTP_METHOD_BASELINE_CONTROL", value: 10)
!60 = !DIEnumerator(name: "HTTP_METHOD_BIND", value: 11)
!61 = !DIEnumerator(name: "HTTP_METHOD_CHECKIN", value: 12)
!62 = !DIEnumerator(name: "HTTP_METHOD_CHECKOUT", value: 13)
!63 = !DIEnumerator(name: "HTTP_METHOD_COPY", value: 14)
!64 = !DIEnumerator(name: "HTTP_METHOD_LABEL", value: 15)
!65 = !DIEnumerator(name: "HTTP_METHOD_LINK", value: 16)
!66 = !DIEnumerator(name: "HTTP_METHOD_LOCK", value: 17)
!67 = !DIEnumerator(name: "HTTP_METHOD_MERGE", value: 18)
!68 = !DIEnumerator(name: "HTTP_METHOD_MKACTIVITY", value: 19)
!69 = !DIEnumerator(name: "HTTP_METHOD_MKCALENDAR", value: 20)
!70 = !DIEnumerator(name: "HTTP_METHOD_MKCOL", value: 21)
!71 = !DIEnumerator(name: "HTTP_METHOD_MKREDIRECTREF", value: 22)
!72 = !DIEnumerator(name: "HTTP_METHOD_MKWORKSPACE", value: 23)
!73 = !DIEnumerator(name: "HTTP_METHOD_MOVE", value: 24)
!74 = !DIEnumerator(name: "HTTP_METHOD_ORDERPATCH", value: 25)
!75 = !DIEnumerator(name: "HTTP_METHOD_PATCH", value: 26)
!76 = !DIEnumerator(name: "HTTP_METHOD_PROPFIND", value: 27)
!77 = !DIEnumerator(name: "HTTP_METHOD_PROPPATCH", value: 28)
!78 = !DIEnumerator(name: "HTTP_METHOD_REBIND", value: 29)
!79 = !DIEnumerator(name: "HTTP_METHOD_REPORT", value: 30)
!80 = !DIEnumerator(name: "HTTP_METHOD_SEARCH", value: 31)
!81 = !DIEnumerator(name: "HTTP_METHOD_UNBIND", value: 32)
!82 = !DIEnumerator(name: "HTTP_METHOD_UNCHECKOUT", value: 33)
!83 = !DIEnumerator(name: "HTTP_METHOD_UNLINK", value: 34)
!84 = !DIEnumerator(name: "HTTP_METHOD_UNLOCK", value: 35)
!85 = !DIEnumerator(name: "HTTP_METHOD_UPDATE", value: 36)
!86 = !DIEnumerator(name: "HTTP_METHOD_UPDATEREDIRECTREF", value: 37)
!87 = !DIEnumerator(name: "HTTP_METHOD_VERSION_CONTROL", value: 38)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 61, baseType: !45, size: 32, elements: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "HTTP_VERSION_UNSET", value: -1)
!91 = !DIEnumerator(name: "HTTP_VERSION_1_0", value: 0)
!92 = !DIEnumerator(name: "HTTP_VERSION_1_1", value: 1)
!93 = !DIEnumerator(name: "HTTP_VERSION_2", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !96, file: !95, line: 9, baseType: !15, size: 32, elements: !116)
!95 = !DIFile(filename: "spack-src/src/fdlog.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "1dfced3d6e6326ccc981df3627f31bb1")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fdlog_st", file: !95, line: 8, size: 256, elements: !97)
!97 = !{!98, !99, !100, !113}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !96, file: !95, line: 9, baseType: !94, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !96, file: !95, line: 10, baseType: !45, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !96, file: !95, line: 11, baseType: !101, size: 128, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "buffer", file: !102, line: 29, baseType: !103)
!102 = !DIFile(filename: "spack-src/src/buffer.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "83c8b506d008193bd35bbe68f14e1c2a")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 22, size: 128, elements: !104)
!104 = !{!105, !107, !112}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !103, file: !102, line: 23, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !103, file: !102, line: 26, baseType: !108, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !109, line: 26, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !111, line: 42, baseType: !15)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !103, file: !102, line: 28, baseType: !108, size: 32, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !96, file: !95, line: 12, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "FDLOG_FILE", value: 0)
!118 = !DIEnumerator(name: "FDLOG_FD", value: 1)
!119 = !DIEnumerator(name: "FDLOG_SYSLOG", value: 2)
!120 = !DIEnumerator(name: "FDLOG_PIPE", value: 3)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 15, baseType: !15, size: 32, elements: !123)
!122 = !DIFile(filename: "spack-src/src/array.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "1cf4a1ef37ac70f79ceaa3d29a995d97")
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIEnumerator(name: "TYPE_STRING", value: 0)
!125 = !DIEnumerator(name: "TYPE_ARRAY", value: 1)
!126 = !DIEnumerator(name: "TYPE_INTEGER", value: 2)
!127 = !DIEnumerator(name: "TYPE_CONFIG", value: 3)
!128 = !DIEnumerator(name: "TYPE_OTHER", value: 4)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !131, file: !130, line: 22, baseType: !15, size: 32, elements: !163)
!130 = !DIFile(filename: "spack-src/src/chunk.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "68721e47e09305b31f90225c328df0d0")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk", file: !130, line: 20, size: 576, elements: !132)
!132 = !{!133, !135, !136, !138, !143}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !131, file: !130, line: 21, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !130, line: 22, baseType: !129, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !131, file: !130, line: 24, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !131, file: !130, line: 30, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !140, line: 87, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !111, line: 153, baseType: !142)
!142 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !131, file: !130, line: 43, baseType: !144, size: 320, offset: 256)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !131, file: !130, line: 32, size: 320, elements: !145)
!145 = !{!146, !147, !148, !149, !158, !159}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !144, file: !130, line: 34, baseType: !139, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !144, file: !130, line: 36, baseType: !45, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "is_temp", scope: !144, file: !130, line: 37, baseType: !45, size: 32, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !144, file: !130, line: 39, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk_file_view", file: !130, line: 18, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_file_view", file: !130, line: 13, size: 256, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mptr", scope: !152, file: !130, line: 14, baseType: !106, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mlen", scope: !152, file: !130, line: 15, baseType: !139, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "foff", scope: !152, file: !130, line: 16, baseType: !139, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !152, file: !130, line: 17, baseType: !45, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !144, file: !130, line: 41, baseType: !25, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "refchg", scope: !144, file: !130, line: 42, baseType: !160, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !25, !45}
!163 = !{!164, !165}
!164 = !DIEnumerator(name: "MEM_CHUNK", value: 0)
!165 = !DIEnumerator(name: "FILE_CHUNK", value: 1)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !167, line: 89, baseType: !15, size: 32, elements: !168)
!167 = !DIFile(filename: "spack-src/src/plugin_config.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "b826c888c36ea41e9e12a5dcb73a23da")
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!169 = !DIEnumerator(name: "T_CONFIG_UNSET", value: 0)
!170 = !DIEnumerator(name: "T_CONFIG_STRING", value: 1)
!171 = !DIEnumerator(name: "T_CONFIG_SHORT", value: 2)
!172 = !DIEnumerator(name: "T_CONFIG_INT", value: 3)
!173 = !DIEnumerator(name: "T_CONFIG_BOOL", value: 4)
!174 = !DIEnumerator(name: "T_CONFIG_ARRAY", value: 5)
!175 = !DIEnumerator(name: "T_CONFIG_ARRAY_KVANY", value: 6)
!176 = !DIEnumerator(name: "T_CONFIG_ARRAY_KVARRAY", value: 7)
!177 = !DIEnumerator(name: "T_CONFIG_ARRAY_KVSTRING", value: 8)
!178 = !DIEnumerator(name: "T_CONFIG_ARRAY_VLIST", value: 9)
!179 = !DIEnumerator(name: "T_CONFIG_LOCAL", value: 10)
!180 = !DIEnumerator(name: "T_CONFIG_DEPRECATED", value: 11)
!181 = !DIEnumerator(name: "T_CONFIG_UNSUPPORTED", value: 12)
!182 = !{!25, !183, !108, !186, !45}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 70, baseType: !185)
!184 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!185 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_string", file: !122, line: 37, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 33, size: 384, elements: !190)
!190 = !{!191, !192, !218, !219, !220}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !189, file: !122, line: 34, baseType: !101, size: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !189, file: !122, line: 34, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_methods", file: !122, line: 9, size: 192, elements: !196)
!196 = !{!197, !210, !214}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !195, file: !122, line: 10, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !208}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_unset", file: !122, line: 21, size: 256, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !202, file: !122, line: 22, baseType: !101, size: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !202, file: !122, line: 22, baseType: !193, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !122, line: 22, baseType: !207, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_type_t", file: !122, line: 15, baseType: !121)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !195, file: !122, line: 11, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !201}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "insert_dup", scope: !195, file: !122, line: 12, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !201, !201}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !189, file: !122, line: 34, baseType: !207, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !189, file: !122, line: 35, baseType: !45, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !122, line: 36, baseType: !101, size: 128, offset: 256)
!221 = !{!0, !222, !227, !232, !234, !239, !244, !7, !249}
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 13)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 21)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !229, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 17)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 20)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 15)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 12)
!254 = !{!255, !256, !257, !598, !600, !603}
!255 = !DILocalVariable(name: "srv", arg: 1, scope: !9, file: !2, line: 90, type: !22)
!256 = !DILocalVariable(name: "p_d", arg: 2, scope: !9, file: !2, line: 90, type: !25)
!257 = !DILocalVariable(name: "p", scope: !9, file: !2, line: 115, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin_data", file: !2, line: 37, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 30, size: 1472, elements: !262)
!262 = !{!263, !264, !265, !304, !582, !592, !593, !595, !597}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !261, file: !2, line: 31, baseType: !45, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "nconfig", scope: !261, file: !2, line: 31, baseType: !45, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "cvlist", scope: !261, file: !2, line: 31, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_plugin_value_t", file: !167, line: 124, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_plugin_value", file: !167, line: 110, size: 128, elements: !269)
!269 = !{!270, !271, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "k_id", scope: !268, file: !167, line: 111, baseType: !45, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !268, file: !167, line: 112, baseType: !272, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_values_type_t", file: !167, line: 102, baseType: !166)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !268, file: !167, line: 123, baseType: !274, size: 64, offset: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "v_u", file: !167, line: 113, size: 64, elements: !275)
!275 = !{!276, !277, !290, !293, !294, !295, !297, !299, !300}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !274, file: !167, line: 114, baseType: !25, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !274, file: !167, line: 115, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "array", file: !122, line: 31, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 25, size: 192, elements: !282)
!282 = !{!283, !287, !288, !289}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !281, file: !122, line: 26, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_unset", file: !122, line: 23, baseType: !202)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "sorted", scope: !281, file: !122, line: 27, baseType: !284, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !281, file: !122, line: 29, baseType: !108, size: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !281, file: !122, line: 30, baseType: !108, size: 32, offset: 160)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !274, file: !167, line: 116, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !274, file: !167, line: 117, baseType: !114, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !274, file: !167, line: 118, baseType: !15, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "shrt", scope: !274, file: !167, line: 119, baseType: !296, size: 16)
!296 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !274, file: !167, line: 120, baseType: !298, size: 64)
!298 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !274, file: !167, line: 121, baseType: !139, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "u2", scope: !274, file: !167, line: 122, baseType: !301, size: 64)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 2)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !261, file: !2, line: 31, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plugin", file: !307, line: 44, size: 1600, elements: !308)
!307 = !DIFile(filename: "spack-src/src/plugin.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "192af98aba6a36b0ed1725683acdb1fd")
!308 = !{!309, !310, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !557, !558, !559, !561, !562, !568, !572, !573, !574, !575, !579, !580, !581}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !306, file: !307, line: 45, baseType: !25, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "handle_uri_raw", scope: !306, file: !307, line: 47, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!12, !314, !25}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_st", file: !13, line: 19, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_st", file: !30, line: 122, size: 6400, elements: !317)
!317 = !{!318, !320, !321, !322, !323, !327, !328, !332, !336, !338, !340, !344, !346, !350, !351, !360, !371, !372, !417, !418, !421, !422, !430, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !468, !469, !470, !480, !481, !482, !494, !495, !496, !542, !543}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !30, line: 123, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_state_t", file: !30, line: 120, baseType: !29)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "http_status", scope: !316, file: !30, line: 124, baseType: !45, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "h2state", scope: !316, file: !30, line: 125, baseType: !108, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "h2id", scope: !316, file: !30, line: 126, baseType: !108, size: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "h2_rwin", scope: !316, file: !30, line: 127, baseType: !324, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !325, line: 26, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !111, line: 41, baseType: !45)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "h2_swin", scope: !316, file: !30, line: 128, baseType: !324, size: 32, offset: 160)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "h2_rwin_fudge", scope: !316, file: !30, line: 129, baseType: !329, size: 16, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !325, line: 25, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !111, line: 39, baseType: !331)
!331 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "h2_prio", scope: !316, file: !30, line: 130, baseType: !333, size: 8, offset: 208)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !109, line: 24, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !111, line: 38, baseType: !335)
!335 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "http_method", scope: !316, file: !30, line: 132, baseType: !337, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_method_t", file: !44, line: 59, baseType: !43)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "http_version", scope: !316, file: !30, line: 133, baseType: !339, size: 32, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "http_version_t", file: !44, line: 61, baseType: !88)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "handler_module", scope: !316, file: !30, line: 135, baseType: !341, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin", file: !13, line: 16, baseType: !306)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_ctx", scope: !316, file: !30, line: 136, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !316, file: !30, line: 137, baseType: !347, size: 64, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !13, line: 10, baseType: !349)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !13, line: 9, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "conditional_is_valid", scope: !316, file: !30, line: 140, baseType: !108, size: 32, offset: 512)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cond_cache", scope: !316, file: !30, line: 141, baseType: !352, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_cache_t", file: !167, line: 164, size: 16, elements: !354)
!354 = !{!355, !359}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !353, file: !167, line: 166, baseType: !356, size: 8)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !325, line: 24, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !111, line: 37, baseType: !358)
!358 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "local_result", scope: !353, file: !167, line: 168, baseType: !356, size: 8, offset: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "cond_match", scope: !316, file: !30, line: 142, baseType: !361, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_match_t", file: !167, line: 175, size: 256, elements: !364)
!364 = !{!365, !366, !369, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "comp_value", scope: !363, file: !167, line: 176, baseType: !291, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "match_data", scope: !363, file: !167, line: 178, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcre2_real_match_data_8", file: !167, line: 172, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "captures", scope: !363, file: !167, line: 180, baseType: !45, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !363, file: !167, line: 181, baseType: !25, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cond_match_data", scope: !316, file: !30, line: 143, baseType: !362, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !316, file: !30, line: 145, baseType: !373, size: 960, offset: 768)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_config", file: !30, line: 78, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_config", file: !30, line: 18, size: 960, elements: !375)
!375 = !{!376, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !413, !414, !415, !416}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "errh", scope: !374, file: !30, line: 19, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "fdlog_st", file: !13, line: 28, baseType: !96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "http_parseopts", scope: !374, file: !30, line: 20, baseType: !15, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_field_size", scope: !374, file: !30, line: 21, baseType: !108, size: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mimetypes", scope: !374, file: !30, line: 22, baseType: !278, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "document_root", scope: !374, file: !30, line: 25, baseType: !291, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !374, file: !30, line: 26, baseType: !291, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !374, file: !30, line: 27, baseType: !291, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "max_request_size", scope: !374, file: !30, line: 29, baseType: !15, size: 32, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_keep_alive_requests", scope: !374, file: !30, line: 30, baseType: !296, size: 16, offset: 416)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_keep_alive_idle", scope: !374, file: !30, line: 31, baseType: !296, size: 16, offset: 432)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_idle", scope: !374, file: !30, line: 32, baseType: !296, size: 16, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_idle", scope: !374, file: !30, line: 33, baseType: !296, size: 16, offset: 464)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "stream_request_body", scope: !374, file: !30, line: 34, baseType: !296, size: 16, offset: 480)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "stream_response_body", scope: !374, file: !30, line: 35, baseType: !296, size: 16, offset: 496)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "high_precision_timestamps", scope: !374, file: !30, line: 36, baseType: !15, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "allow_http11", scope: !374, file: !30, line: 37, baseType: !15, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "range_requests", scope: !374, file: !30, line: 38, baseType: !15, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "follow_symlink", scope: !374, file: !30, line: 39, baseType: !15, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "etag_flags", scope: !374, file: !30, line: 40, baseType: !15, size: 3, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "use_xattr", scope: !374, file: !30, line: 41, baseType: !15, size: 1, offset: 519, flags: DIFlagBitField, extraData: i64 512)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "force_lowercase_filenames", scope: !374, file: !30, line: 42, baseType: !15, size: 2, offset: 520, flags: DIFlagBitField, extraData: i64 512)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "error_intercept", scope: !374, file: !30, line: 43, baseType: !15, size: 1, offset: 522, flags: DIFlagBitField, extraData: i64 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "h2proto", scope: !374, file: !30, line: 45, baseType: !15, size: 2, offset: 523, flags: DIFlagBitField, extraData: i64 512)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_handling", scope: !374, file: !30, line: 48, baseType: !15, size: 1, offset: 525, flags: DIFlagBitField, extraData: i64 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "log_state_handling", scope: !374, file: !30, line: 49, baseType: !15, size: 1, offset: 526, flags: DIFlagBitField, extraData: i64 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "log_condition_handling", scope: !374, file: !30, line: 50, baseType: !15, size: 1, offset: 527, flags: DIFlagBitField, extraData: i64 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "log_response_header", scope: !374, file: !30, line: 51, baseType: !15, size: 1, offset: 528, flags: DIFlagBitField, extraData: i64 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_header", scope: !374, file: !30, line: 52, baseType: !15, size: 1, offset: 529, flags: DIFlagBitField, extraData: i64 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "log_request_header_on_error", scope: !374, file: !30, line: 53, baseType: !15, size: 1, offset: 530, flags: DIFlagBitField, extraData: i64 512)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "log_file_not_found", scope: !374, file: !30, line: 54, baseType: !15, size: 1, offset: 531, flags: DIFlagBitField, extraData: i64 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "log_timeouts", scope: !374, file: !30, line: 55, baseType: !15, size: 1, offset: 532, flags: DIFlagBitField, extraData: i64 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_per_second", scope: !374, file: !30, line: 57, baseType: !15, size: 32, offset: 544)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "global_bytes_per_second", scope: !374, file: !30, line: 58, baseType: !15, size: 32, offset: 576)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "global_bytes_per_second_cnt_ptr", scope: !374, file: !30, line: 72, baseType: !412, size: 64, offset: 640)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler", scope: !374, file: !30, line: 74, baseType: !291, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler_404", scope: !374, file: !30, line: 75, baseType: !291, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "errorfile_prefix", scope: !374, file: !30, line: 76, baseType: !291, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "serrh", scope: !374, file: !30, line: 77, baseType: !377, size: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rqst_header_len", scope: !316, file: !30, line: 148, baseType: !108, size: 32, offset: 1728)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rqst_htags", scope: !316, file: !30, line: 149, baseType: !419, size: 64, offset: 1792)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !109, line: 27, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !111, line: 45, baseType: !185)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rqst_headers", scope: !316, file: !30, line: 150, baseType: !280, size: 192, offset: 1856)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !316, file: !30, line: 152, baseType: !423, size: 512, offset: 2048)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_uri", file: !30, line: 89, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 80, size: 512, elements: !425)
!425 = !{!426, !427, !428, !429}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !424, file: !30, line: 81, baseType: !101, size: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !424, file: !30, line: 84, baseType: !101, size: 128, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !424, file: !30, line: 87, baseType: !101, size: 128, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !424, file: !30, line: 88, baseType: !101, size: 128, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !316, file: !30, line: 153, baseType: !431, size: 512, offset: 2560)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "physical", file: !30, line: 97, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 91, size: 512, elements: !433)
!433 = !{!434, !435, !436, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !432, file: !30, line: 92, baseType: !101, size: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "basedir", scope: !432, file: !30, line: 93, baseType: !101, size: 128, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "doc_root", scope: !432, file: !30, line: 95, baseType: !101, size: 128, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rel_path", scope: !432, file: !30, line: 96, baseType: !101, size: 128, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !316, file: !30, line: 154, baseType: !280, size: 192, offset: 3072)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reqbody_length", scope: !316, file: !30, line: 156, baseType: !139, size: 64, offset: 3264)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "te_chunked", scope: !316, file: !30, line: 157, baseType: !139, size: 64, offset: 3328)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "resp_body_scratchpad", scope: !316, file: !30, line: 158, baseType: !139, size: 64, offset: 3392)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "http_host", scope: !316, file: !30, line: 160, baseType: !137, size: 64, offset: 3456)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !316, file: !30, line: 161, baseType: !291, size: 64, offset: 3520)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !316, file: !30, line: 163, baseType: !101, size: 128, offset: 3584)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "target_orig", scope: !316, file: !30, line: 164, baseType: !101, size: 128, offset: 3712)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pathinfo", scope: !316, file: !30, line: 166, baseType: !101, size: 128, offset: 3840)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "server_name_buf", scope: !316, file: !30, line: 167, baseType: !101, size: 128, offset: 3968)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "resp_header_len", scope: !316, file: !30, line: 170, baseType: !108, size: 32, offset: 4096)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "resp_htags", scope: !316, file: !30, line: 171, baseType: !419, size: 64, offset: 4160)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "resp_headers", scope: !316, file: !30, line: 172, baseType: !280, size: 192, offset: 4224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "resp_body_finished", scope: !316, file: !30, line: 173, baseType: !4, size: 8, offset: 4416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "resp_body_started", scope: !316, file: !30, line: 174, baseType: !4, size: 8, offset: 4424)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "resp_send_chunked", scope: !316, file: !30, line: 175, baseType: !4, size: 8, offset: 4432)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "resp_decode_chunked", scope: !316, file: !30, line: 176, baseType: !4, size: 8, offset: 4440)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "resp_header_repeated", scope: !316, file: !30, line: 177, baseType: !4, size: 8, offset: 4448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_request", scope: !316, file: !30, line: 179, baseType: !4, size: 8, offset: 4456)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive", scope: !316, file: !30, line: 180, baseType: !356, size: 8, offset: 4464)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "async_callback", scope: !316, file: !30, line: 181, baseType: !4, size: 8, offset: 4472)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_buf", scope: !316, file: !30, line: 183, baseType: !137, size: 64, offset: 4480)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "gw_dechunk", scope: !316, file: !30, line: 184, baseType: !461, size: 64, offset: 4544)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "response_dechunk", file: !30, line: 103, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 99, size: 256, elements: !464)
!464 = !{!465, !466, !467}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "gw_chunked", scope: !463, file: !30, line: 100, baseType: !139, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !463, file: !30, line: 101, baseType: !101, size: 128, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !463, file: !30, line: 102, baseType: !45, size: 32, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_written_ckpt", scope: !316, file: !30, line: 186, baseType: !139, size: 64, offset: 4608)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_read_ckpt", scope: !316, file: !30, line: 187, baseType: !139, size: 64, offset: 4672)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "start_hp", scope: !316, file: !30, line: 188, baseType: !471, size: 128, offset: 4736)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "unix_timespec64_t", file: !472, line: 135, baseType: !473)
!472 = !DIFile(filename: "spack-src/src/first.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "db942007b87b5a60f6bd859b991a2b7a")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !474, line: 11, size: 128, elements: !475)
!474 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!475 = !{!476, !478}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !473, file: !474, line: 16, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !111, line: 160, baseType: !142)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !473, file: !474, line: 21, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !111, line: 197, baseType: !142)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler_saved_status", scope: !316, file: !30, line: 190, baseType: !45, size: 32, offset: 4864)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "error_handler_saved_method", scope: !316, file: !30, line: 191, baseType: !337, size: 32, offset: 4896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "write_queue", scope: !316, file: !30, line: 193, baseType: !483, size: 448, offset: 4928)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunkqueue", file: !130, line: 46, size: 448, elements: !484)
!484 = !{!485, !488, !489, !490, !491, !492, !493}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !483, file: !130, line: 47, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk", file: !130, line: 44, baseType: !131)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !483, file: !130, line: 48, baseType: !486, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in", scope: !483, file: !130, line: 50, baseType: !139, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_out", scope: !483, file: !130, line: 50, baseType: !139, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "tempdirs", scope: !483, file: !130, line: 52, baseType: !278, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "upload_temp_file_size", scope: !483, file: !130, line: 53, baseType: !139, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tempdir_idx", scope: !483, file: !130, line: 54, baseType: !15, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "read_queue", scope: !316, file: !30, line: 194, baseType: !483, size: 448, offset: 5376)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reqbody_queue", scope: !316, file: !30, line: 195, baseType: !483, size: 448, offset: 5824)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_sce", scope: !316, file: !30, line: 197, baseType: !497, size: 64, offset: 6272)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat_cache_entry", file: !499, line: 14, size: 1728, elements: !500)
!499 = !DIFile(filename: "spack-src/src/stat_cache.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "e4866da9655f8a910e91fd853f8cc12f")
!500 = !{!501, !502, !506, !507, !508, !509, !510, !511}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !499, line: 15, baseType: !101, size: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "stat_ts", scope: !498, file: !499, line: 16, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "unix_time64_t", file: !472, line: 134, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !505, line: 10, baseType: !477)
!505 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !498, file: !499, line: 17, baseType: !45, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !498, file: !499, line: 18, baseType: !45, size: 32, offset: 224)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fam_dir", scope: !498, file: !499, line: 20, baseType: !25, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "etag", scope: !498, file: !499, line: 22, baseType: !101, size: 128, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !498, file: !499, line: 23, baseType: !101, size: 128, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !498, file: !499, line: 24, baseType: !512, size: 1152, offset: 576)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !513, line: 26, size: 1152, elements: !514)
!513 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!514 = !{!515, !517, !519, !521, !523, !525, !527, !528, !529, !531, !533, !535, !536, !537, !538}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !512, file: !513, line: 31, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !111, line: 145, baseType: !185)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !512, file: !513, line: 36, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !111, line: 148, baseType: !185)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !512, file: !513, line: 44, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !111, line: 151, baseType: !185)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !512, file: !513, line: 45, baseType: !522, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !111, line: 150, baseType: !15)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !512, file: !513, line: 47, baseType: !524, size: 32, offset: 224)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !111, line: 146, baseType: !15)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !512, file: !513, line: 48, baseType: !526, size: 32, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !111, line: 147, baseType: !15)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !512, file: !513, line: 50, baseType: !45, size: 32, offset: 288)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !512, file: !513, line: 52, baseType: !516, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !512, file: !513, line: 57, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !111, line: 152, baseType: !142)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !512, file: !513, line: 61, baseType: !532, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !111, line: 175, baseType: !142)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !512, file: !513, line: 63, baseType: !534, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !111, line: 180, baseType: !142)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !512, file: !513, line: 74, baseType: !473, size: 128, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !512, file: !513, line: 75, baseType: !473, size: 128, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !512, file: !513, line: 76, baseType: !473, size: 128, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !512, file: !513, line: 89, baseType: !539, size: 192, offset: 960)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 192, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 3)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cond_captures", scope: !316, file: !30, line: 198, baseType: !45, size: 32, offset: 6336)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "h2_connect_ext", scope: !316, file: !30, line: 199, baseType: !45, size: 32, offset: 6368)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handle_uri_clean", scope: !306, file: !307, line: 48, baseType: !311, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handle_docroot", scope: !306, file: !307, line: 49, baseType: !311, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "handle_physical", scope: !306, file: !307, line: 50, baseType: !311, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "handle_request_env", scope: !306, file: !307, line: 51, baseType: !311, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "handle_request_done", scope: !306, file: !307, line: 52, baseType: !311, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "handle_subrequest_start", scope: !306, file: !307, line: 53, baseType: !311, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "handle_subrequest", scope: !306, file: !307, line: 54, baseType: !311, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "handle_response_start", scope: !306, file: !307, line: 55, baseType: !311, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "handle_request_reset", scope: !306, file: !307, line: 56, baseType: !311, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "handle_connection_accept", scope: !306, file: !307, line: 58, baseType: !554, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!12, !347, !25}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "handle_connection_shut_wr", scope: !306, file: !307, line: 59, baseType: !554, size: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "handle_connection_close", scope: !306, file: !307, line: 60, baseType: !554, size: 64, offset: 832)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "handle_trigger", scope: !306, file: !307, line: 62, baseType: !560, size: 64, offset: 896)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "handle_sighup", scope: !306, file: !307, line: 63, baseType: !560, size: 64, offset: 960)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handle_waitpid", scope: !306, file: !307, line: 64, baseType: !563, size: 64, offset: 1024)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!12, !22, !25, !566, !45}
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !140, line: 97, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !111, line: 154, baseType: !45)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !306, file: !307, line: 66, baseType: !569, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!25}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "priv_defaults", scope: !306, file: !307, line: 67, baseType: !560, size: 64, offset: 1152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "set_defaults", scope: !306, file: !307, line: 68, baseType: !560, size: 64, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "worker_init", scope: !306, file: !307, line: 69, baseType: !560, size: 64, offset: 1280)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !306, file: !307, line: 70, baseType: !576, size: 64, offset: 1344)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !25}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 72, baseType: !114, size: 64, offset: 1408)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !306, file: !307, line: 73, baseType: !183, size: 64, offset: 1472)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lib", scope: !306, file: !307, line: 74, baseType: !25, size: 64, offset: 1536)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !261, file: !2, line: 32, baseType: !583, size: 320, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "plugin_config", file: !2, line: 28, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 21, size: 320, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !584, file: !2, line: 22, baseType: !278, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "include_user", scope: !584, file: !2, line: 23, baseType: !278, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !584, file: !2, line: 24, baseType: !291, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "basepath", scope: !584, file: !2, line: 25, baseType: !291, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "letterhomes", scope: !584, file: !2, line: 26, baseType: !296, size: 16, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !584, file: !2, line: 27, baseType: !296, size: 16, offset: 272)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !261, file: !2, line: 33, baseType: !583, size: 320, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cache_ts", scope: !261, file: !2, line: 34, baseType: !594, size: 128, offset: 832)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 128, elements: !302)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cache_user", scope: !261, file: !2, line: 35, baseType: !596, size: 256, offset: 960)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !302)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cache_path", scope: !261, file: !2, line: 36, baseType: !596, size: 256, offset: 1216)
!598 = !DILocalVariable(name: "i", scope: !599, file: !2, line: 121, type: !45)
!599 = distinct !DILexicalBlock(scope: !9, file: !2, line: 121, column: 5)
!600 = !DILocalVariable(name: "cpv", scope: !601, file: !2, line: 122, type: !266)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 121, column: 62)
!602 = distinct !DILexicalBlock(scope: !599, file: !2, line: 121, column: 5)
!603 = !DILocalVariable(name: "cpv", scope: !604, file: !2, line: 149, type: !606)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 148, column: 47)
!605 = distinct !DILexicalBlock(scope: !9, file: !2, line: 148, column: 9)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 896, elements: !617)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_plugin_keys_t", file: !167, line: 132, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 126, size: 128, elements: !612)
!612 = !{!613, !614, !615, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !611, file: !167, line: 127, baseType: !114, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "klen", scope: !611, file: !167, line: 128, baseType: !333, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !611, file: !167, line: 130, baseType: !333, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !611, file: !167, line: 131, baseType: !333, size: 8, offset: 80)
!617 = !{!618}
!618 = !DISubrange(count: 7)
!619 = !{i32 7, !"Dwarf Version", i32 5}
!620 = !{i32 2, !"Debug Info Version", i32 3}
!621 = !{i32 1, !"wchar_size", i32 4}
!622 = !{i32 8, !"PIC Level", i32 2}
!623 = !{i32 7, !"uwtable", i32 2}
!624 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!625 = distinct !DISubprogram(name: "mod_userdir_plugin_init", scope: !2, file: !2, line: 335, type: !626, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !629)
!626 = !DISubroutineType(types: !627)
!627 = !{!45, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!629 = !{!630}
!630 = !DILocalVariable(name: "p", arg: 1, scope: !625, file: !2, line: 335, type: !628)
!631 = !{!632, !632, i64 0}
!632 = !{!"any pointer", !633, i64 0}
!633 = !{!"omnipotent char", !634, i64 0}
!634 = !{!"Simple C/C++ TBAA"}
!635 = !DILocation(line: 335, column: 37, scope: !625)
!636 = !DILocation(line: 336, column: 2, scope: !625)
!637 = !DILocation(line: 336, column: 5, scope: !625)
!638 = !DILocation(line: 336, column: 17, scope: !625)
!639 = !{!640, !641, i64 184}
!640 = !{!"plugin", !632, i64 0, !632, i64 8, !632, i64 16, !632, i64 24, !632, i64 32, !632, i64 40, !632, i64 48, !632, i64 56, !632, i64 64, !632, i64 72, !632, i64 80, !632, i64 88, !632, i64 96, !632, i64 104, !632, i64 112, !632, i64 120, !632, i64 128, !632, i64 136, !632, i64 144, !632, i64 152, !632, i64 160, !632, i64 168, !632, i64 176, !641, i64 184, !632, i64 192}
!641 = !{!"long", !633, i64 0}
!642 = !DILocation(line: 337, column: 2, scope: !625)
!643 = !DILocation(line: 337, column: 5, scope: !625)
!644 = !DILocation(line: 337, column: 17, scope: !625)
!645 = !{!640, !632, i64 176}
!646 = !DILocation(line: 339, column: 2, scope: !625)
!647 = !DILocation(line: 339, column: 5, scope: !625)
!648 = !DILocation(line: 339, column: 20, scope: !625)
!649 = !{!640, !632, i64 136}
!650 = !DILocation(line: 340, column: 2, scope: !625)
!651 = !DILocation(line: 340, column: 5, scope: !625)
!652 = !DILocation(line: 340, column: 20, scope: !625)
!653 = !{!640, !632, i64 168}
!654 = !DILocation(line: 341, column: 2, scope: !625)
!655 = !DILocation(line: 341, column: 5, scope: !625)
!656 = !DILocation(line: 341, column: 21, scope: !625)
!657 = !{!640, !632, i64 32}
!658 = !DILocation(line: 342, column: 2, scope: !625)
!659 = !DILocation(line: 342, column: 5, scope: !625)
!660 = !DILocation(line: 342, column: 20, scope: !625)
!661 = !{!640, !632, i64 152}
!662 = !DILocation(line: 344, column: 2, scope: !625)
!663 = distinct !DISubprogram(name: "mod_userdir_init", scope: !2, file: !2, line: 39, type: !570, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26)
!664 = !DILocation(line: 40, column: 12, scope: !663)
!665 = !DILocation(line: 40, column: 5, scope: !663)
!666 = distinct !DISubprogram(name: "mod_userdir_free", scope: !2, file: !2, line: 43, type: !577, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !667)
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "p_d", arg: 1, scope: !666, file: !2, line: 43, type: !25)
!669 = !DILocalVariable(name: "p", scope: !666, file: !2, line: 44, type: !258)
!670 = !DILocation(line: 43, column: 1, scope: !666)
!671 = !DILocation(line: 44, column: 5, scope: !666)
!672 = !DILocation(line: 44, column: 25, scope: !666)
!673 = !DILocation(line: 44, column: 29, scope: !666)
!674 = !DILocation(line: 45, column: 10, scope: !666)
!675 = !DILocation(line: 45, column: 13, scope: !666)
!676 = !DILocation(line: 45, column: 27, scope: !666)
!677 = !{!678, !632, i64 0}
!678 = !{!"", !632, i64 0, !679, i64 8, !679, i64 12}
!679 = !{!"int", !633, i64 0}
!680 = !DILocation(line: 45, column: 5, scope: !666)
!681 = !DILocation(line: 46, column: 10, scope: !666)
!682 = !DILocation(line: 46, column: 13, scope: !666)
!683 = !DILocation(line: 46, column: 27, scope: !666)
!684 = !DILocation(line: 46, column: 5, scope: !666)
!685 = !DILocation(line: 47, column: 10, scope: !666)
!686 = !DILocation(line: 47, column: 13, scope: !666)
!687 = !DILocation(line: 47, column: 27, scope: !666)
!688 = !DILocation(line: 47, column: 5, scope: !666)
!689 = !DILocation(line: 48, column: 10, scope: !666)
!690 = !DILocation(line: 48, column: 13, scope: !666)
!691 = !DILocation(line: 48, column: 27, scope: !666)
!692 = !DILocation(line: 48, column: 5, scope: !666)
!693 = !DILocation(line: 49, column: 1, scope: !666)
!694 = distinct !DISubprogram(name: "mod_userdir_docroot_handler", scope: !2, file: !2, line: 280, type: !312, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !695)
!695 = !{!696, !697, !698, !699, !701, !702}
!696 = !DILocalVariable(name: "r", arg: 1, scope: !694, file: !2, line: 280, type: !314)
!697 = !DILocalVariable(name: "p_d", arg: 2, scope: !694, file: !2, line: 280, type: !25)
!698 = !DILocalVariable(name: "p", scope: !694, file: !2, line: 290, type: !258)
!699 = !DILocalVariable(name: "uptr", scope: !694, file: !2, line: 298, type: !700)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!701 = !DILocalVariable(name: "rel_url", scope: !694, file: !2, line: 299, type: !700)
!702 = !DILocalVariable(name: "ulen", scope: !694, file: !2, line: 308, type: !703)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!704 = !DILocation(line: 280, column: 1, scope: !694)
!705 = !DILocation(line: 287, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !694, file: !2, line: 287, column: 9)
!707 = !DILocation(line: 287, column: 12, scope: !706)
!708 = !DILocation(line: 287, column: 16, scope: !706)
!709 = !DILocation(line: 287, column: 21, scope: !706)
!710 = !{!711, !632, i64 288}
!711 = !{!"request_st", !633, i64 0, !679, i64 4, !679, i64 8, !679, i64 12, !679, i64 16, !679, i64 20, !712, i64 24, !633, i64 26, !633, i64 28, !633, i64 32, !632, i64 40, !632, i64 48, !632, i64 56, !679, i64 64, !632, i64 72, !632, i64 80, !632, i64 88, !713, i64 96, !679, i64 216, !641, i64 224, !714, i64 232, !715, i64 256, !715, i64 320, !714, i64 384, !641, i64 408, !641, i64 416, !641, i64 424, !632, i64 432, !632, i64 440, !678, i64 448, !678, i64 464, !678, i64 480, !678, i64 496, !679, i64 512, !641, i64 520, !714, i64 528, !633, i64 552, !633, i64 553, !633, i64 554, !633, i64 555, !633, i64 556, !633, i64 557, !633, i64 558, !633, i64 559, !632, i64 560, !632, i64 568, !641, i64 576, !641, i64 584, !716, i64 592, !679, i64 608, !633, i64 612, !717, i64 616, !717, i64 672, !717, i64 728, !632, i64 784, !679, i64 792, !679, i64 796}
!712 = !{!"short", !633, i64 0}
!713 = !{!"request_config", !632, i64 0, !679, i64 8, !679, i64 12, !632, i64 16, !632, i64 24, !632, i64 32, !632, i64 40, !679, i64 48, !712, i64 52, !712, i64 54, !712, i64 56, !712, i64 58, !712, i64 60, !712, i64 62, !679, i64 64, !679, i64 64, !679, i64 64, !679, i64 64, !679, i64 64, !679, i64 64, !679, i64 65, !679, i64 65, !679, i64 65, !679, i64 65, !679, i64 65, !679, i64 65, !679, i64 66, !679, i64 66, !679, i64 66, !679, i64 66, !679, i64 66, !679, i64 68, !679, i64 72, !632, i64 80, !632, i64 88, !632, i64 96, !632, i64 104, !632, i64 112}
!714 = !{!"", !632, i64 0, !632, i64 8, !679, i64 16, !679, i64 20}
!715 = !{!"", !678, i64 0, !678, i64 16, !678, i64 32, !678, i64 48}
!716 = !{!"timespec", !641, i64 0, !641, i64 8}
!717 = !{!"chunkqueue", !632, i64 0, !632, i64 8, !641, i64 16, !641, i64 24, !632, i64 32, !641, i64 40, !679, i64 48}
!718 = !{!633, !633, i64 0}
!719 = !DILocation(line: 287, column: 28, scope: !706)
!720 = !DILocation(line: 287, column: 35, scope: !706)
!721 = !DILocation(line: 288, column: 9, scope: !706)
!722 = !DILocation(line: 288, column: 12, scope: !706)
!723 = !DILocation(line: 288, column: 16, scope: !706)
!724 = !DILocation(line: 288, column: 21, scope: !706)
!725 = !DILocation(line: 288, column: 28, scope: !706)
!726 = !DILocation(line: 287, column: 9, scope: !694)
!727 = !DILocation(line: 288, column: 36, scope: !706)
!728 = !DILocation(line: 290, column: 5, scope: !694)
!729 = !DILocation(line: 290, column: 25, scope: !694)
!730 = !DILocation(line: 290, column: 29, scope: !694)
!731 = !DILocation(line: 291, column: 30, scope: !694)
!732 = !DILocation(line: 291, column: 33, scope: !694)
!733 = !DILocation(line: 291, column: 5, scope: !694)
!734 = !DILocation(line: 296, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !694, file: !2, line: 296, column: 9)
!736 = !DILocation(line: 296, column: 13, scope: !735)
!737 = !DILocation(line: 296, column: 18, scope: !735)
!738 = !{!739, !712, i64 98}
!739 = !{!"", !679, i64 0, !679, i64 4, !632, i64 8, !632, i64 16, !740, i64 24, !740, i64 64, !633, i64 104, !633, i64 120, !633, i64 152}
!740 = !{!"", !632, i64 0, !632, i64 8, !632, i64 16, !632, i64 24, !712, i64 32, !712, i64 34}
!741 = !DILocation(line: 296, column: 25, scope: !735)
!742 = !DILocation(line: 296, column: 29, scope: !735)
!743 = !DILocation(line: 296, column: 32, scope: !735)
!744 = !DILocation(line: 296, column: 37, scope: !735)
!745 = !{!739, !632, i64 80}
!746 = !DILocation(line: 296, column: 9, scope: !694)
!747 = !DILocation(line: 296, column: 43, scope: !735)
!748 = !DILocation(line: 298, column: 5, scope: !694)
!749 = !DILocation(line: 298, column: 24, scope: !694)
!750 = !DILocation(line: 298, column: 31, scope: !694)
!751 = !DILocation(line: 298, column: 34, scope: !694)
!752 = !DILocation(line: 298, column: 38, scope: !694)
!753 = !DILocation(line: 298, column: 43, scope: !694)
!754 = !DILocation(line: 298, column: 47, scope: !694)
!755 = !DILocation(line: 299, column: 5, scope: !694)
!756 = !DILocation(line: 299, column: 24, scope: !694)
!757 = !DILocation(line: 299, column: 41, scope: !694)
!758 = !DILocation(line: 299, column: 34, scope: !694)
!759 = !DILocation(line: 300, column: 17, scope: !760)
!760 = distinct !DILexicalBlock(scope: !694, file: !2, line: 300, column: 9)
!761 = !DILocation(line: 300, column: 14, scope: !760)
!762 = !DILocation(line: 300, column: 9, scope: !694)
!763 = !DILocation(line: 301, column: 15, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !2, line: 301, column: 13)
!765 = distinct !DILexicalBlock(scope: !760, file: !2, line: 300, column: 26)
!766 = !DILocation(line: 301, column: 14, scope: !764)
!767 = !DILocation(line: 301, column: 13, scope: !765)
!768 = !DILocation(line: 301, column: 21, scope: !764)
!769 = !DILocation(line: 303, column: 45, scope: !765)
!770 = !DILocation(line: 303, column: 9, scope: !765)
!771 = !DILocation(line: 304, column: 9, scope: !765)
!772 = !DILocation(line: 308, column: 5, scope: !694)
!773 = !DILocation(line: 308, column: 18, scope: !694)
!774 = !DILocation(line: 308, column: 34, scope: !694)
!775 = !DILocation(line: 308, column: 44, scope: !694)
!776 = !DILocation(line: 308, column: 42, scope: !694)
!777 = !{!641, !641, i64 0}
!778 = !DILocation(line: 309, column: 14, scope: !779)
!779 = distinct !DILexicalBlock(scope: !694, file: !2, line: 309, column: 9)
!780 = !DILocation(line: 309, column: 11, scope: !779)
!781 = !DILocation(line: 309, column: 9, scope: !694)
!782 = !DILocation(line: 309, column: 20, scope: !779)
!783 = !DILocation(line: 315, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !694, file: !2, line: 315, column: 9)
!785 = !DILocation(line: 315, column: 12, scope: !784)
!786 = !DILocation(line: 315, column: 17, scope: !784)
!787 = !{!739, !632, i64 64}
!788 = !DILocation(line: 315, column: 9, scope: !694)
!789 = !DILocation(line: 318, column: 14, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 318, column: 13)
!791 = distinct !DILexicalBlock(scope: !784, file: !2, line: 315, column: 31)
!792 = !DILocation(line: 318, column: 17, scope: !790)
!793 = !DILocation(line: 318, column: 22, scope: !790)
!794 = !DILocation(line: 318, column: 13, scope: !791)
!795 = !DILocation(line: 319, column: 36, scope: !790)
!796 = !DILocation(line: 319, column: 39, scope: !790)
!797 = !DILocation(line: 319, column: 44, scope: !790)
!798 = !DILocation(line: 319, column: 58, scope: !790)
!799 = !DILocation(line: 319, column: 64, scope: !790)
!800 = !DILocation(line: 319, column: 15, scope: !790)
!801 = !DILocation(line: 318, column: 13, scope: !790)
!802 = !DILocation(line: 320, column: 39, scope: !790)
!803 = !DILocation(line: 320, column: 42, scope: !790)
!804 = !DILocation(line: 320, column: 47, scope: !790)
!805 = !DILocation(line: 320, column: 61, scope: !790)
!806 = !DILocation(line: 320, column: 67, scope: !790)
!807 = !DILocation(line: 320, column: 15, scope: !790)
!808 = !DILocation(line: 321, column: 13, scope: !790)
!809 = !DILocation(line: 322, column: 5, scope: !791)
!810 = !DILocation(line: 324, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !694, file: !2, line: 324, column: 9)
!812 = !DILocation(line: 324, column: 12, scope: !811)
!813 = !DILocation(line: 324, column: 17, scope: !811)
!814 = !{!739, !632, i64 72}
!815 = !DILocation(line: 324, column: 9, scope: !694)
!816 = !DILocation(line: 325, column: 35, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 325, column: 13)
!818 = distinct !DILexicalBlock(scope: !811, file: !2, line: 324, column: 31)
!819 = !DILocation(line: 325, column: 38, scope: !817)
!820 = !DILocation(line: 325, column: 43, scope: !817)
!821 = !DILocation(line: 325, column: 57, scope: !817)
!822 = !DILocation(line: 325, column: 63, scope: !817)
!823 = !DILocation(line: 325, column: 14, scope: !817)
!824 = !DILocation(line: 325, column: 13, scope: !818)
!825 = !DILocation(line: 326, column: 13, scope: !817)
!826 = !DILocation(line: 327, column: 5, scope: !818)
!827 = !DILocation(line: 329, column: 42, scope: !694)
!828 = !DILocation(line: 329, column: 45, scope: !694)
!829 = !DILocation(line: 329, column: 48, scope: !694)
!830 = !DILocation(line: 329, column: 54, scope: !694)
!831 = !DILocation(line: 329, column: 12, scope: !694)
!832 = !DILocation(line: 329, column: 5, scope: !694)
!833 = !DILocation(line: 330, column: 1, scope: !694)
!834 = !DILocation(line: 90, column: 1, scope: !9)
!835 = !DILocation(line: 115, column: 5, scope: !9)
!836 = !DILocation(line: 115, column: 25, scope: !9)
!837 = !DILocation(line: 115, column: 29, scope: !9)
!838 = !DILocation(line: 116, column: 36, scope: !839)
!839 = distinct !DILexicalBlock(scope: !9, file: !2, line: 116, column: 9)
!840 = !DILocation(line: 116, column: 41, scope: !839)
!841 = !DILocation(line: 116, column: 10, scope: !839)
!842 = !DILocation(line: 116, column: 9, scope: !9)
!843 = !DILocation(line: 117, column: 9, scope: !839)
!844 = !DILocation(line: 121, column: 10, scope: !599)
!845 = !DILocation(line: 121, column: 14, scope: !599)
!846 = !DILocation(line: 121, column: 19, scope: !599)
!847 = !DILocation(line: 121, column: 22, scope: !599)
!848 = !{!739, !632, i64 8}
!849 = !DILocation(line: 121, column: 32, scope: !599)
!850 = !DILocation(line: 121, column: 18, scope: !599)
!851 = !{!679, !679, i64 0}
!852 = !DILocation(line: 121, column: 41, scope: !602)
!853 = !DILocation(line: 121, column: 45, scope: !602)
!854 = !DILocation(line: 121, column: 48, scope: !602)
!855 = !{!739, !679, i64 4}
!856 = !DILocation(line: 121, column: 43, scope: !602)
!857 = !DILocation(line: 121, column: 5, scope: !599)
!858 = !DILocation(line: 121, column: 5, scope: !602)
!859 = !DILocation(line: 122, column: 9, scope: !601)
!860 = !DILocation(line: 122, column: 32, scope: !601)
!861 = !DILocation(line: 122, column: 38, scope: !601)
!862 = !DILocation(line: 122, column: 41, scope: !601)
!863 = !DILocation(line: 122, column: 50, scope: !601)
!864 = !DILocation(line: 122, column: 53, scope: !601)
!865 = !DILocation(line: 122, column: 60, scope: !601)
!866 = !DILocation(line: 122, column: 63, scope: !601)
!867 = !DILocation(line: 122, column: 48, scope: !601)
!868 = !DILocation(line: 123, column: 9, scope: !601)
!869 = !DILocation(line: 123, column: 22, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !2, line: 123, column: 9)
!871 = distinct !DILexicalBlock(scope: !601, file: !2, line: 123, column: 9)
!872 = !DILocation(line: 123, column: 27, scope: !870)
!873 = !{!874, !679, i64 0}
!874 = !{!"config_plugin_value", !679, i64 0, !633, i64 4, !633, i64 8}
!875 = !DILocation(line: 123, column: 19, scope: !870)
!876 = !DILocation(line: 123, column: 9, scope: !871)
!877 = !DILocation(line: 124, column: 21, scope: !878)
!878 = distinct !DILexicalBlock(scope: !870, file: !2, line: 123, column: 40)
!879 = !DILocation(line: 124, column: 26, scope: !878)
!880 = !DILocation(line: 124, column: 13, scope: !878)
!881 = !DILocation(line: 128, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !2, line: 124, column: 32)
!883 = !DILocation(line: 130, column: 37, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !2, line: 130, column: 21)
!885 = !DILocation(line: 130, column: 42, scope: !884)
!886 = !DILocation(line: 130, column: 44, scope: !884)
!887 = !DILocation(line: 130, column: 21, scope: !884)
!888 = !DILocation(line: 130, column: 21, scope: !882)
!889 = !DILocation(line: 131, column: 21, scope: !884)
!890 = !DILocation(line: 131, column: 26, scope: !884)
!891 = !DILocation(line: 131, column: 30, scope: !884)
!892 = !DILocation(line: 132, column: 17, scope: !882)
!893 = !DILocation(line: 135, column: 17, scope: !882)
!894 = !DILocation(line: 137, column: 17, scope: !882)
!895 = !DILocation(line: 139, column: 9, scope: !878)
!896 = !DILocation(line: 123, column: 33, scope: !870)
!897 = !DILocation(line: 123, column: 9, scope: !870)
!898 = distinct !{!898, !876, !899, !900}
!899 = !DILocation(line: 139, column: 9, scope: !871)
!900 = !{!"llvm.loop.mustprogress"}
!901 = !DILocation(line: 140, column: 5, scope: !602)
!902 = !DILocation(line: 140, column: 5, scope: !601)
!903 = !DILocation(line: 121, column: 57, scope: !602)
!904 = distinct !{!904, !857, !905, !900}
!905 = !DILocation(line: 140, column: 5, scope: !599)
!906 = !DILocation(line: 145, column: 5, scope: !9)
!907 = !DILocation(line: 145, column: 8, scope: !9)
!908 = !DILocation(line: 145, column: 17, scope: !9)
!909 = !DILocation(line: 145, column: 24, scope: !9)
!910 = !{!739, !712, i64 58}
!911 = !DILocation(line: 148, column: 9, scope: !605)
!912 = !DILocation(line: 148, column: 12, scope: !605)
!913 = !DILocation(line: 148, column: 20, scope: !605)
!914 = !DILocation(line: 148, column: 24, scope: !605)
!915 = !DILocation(line: 148, column: 27, scope: !605)
!916 = !DILocation(line: 148, column: 30, scope: !605)
!917 = !DILocation(line: 148, column: 38, scope: !605)
!918 = !DILocation(line: 148, column: 9, scope: !9)
!919 = !DILocation(line: 149, column: 9, scope: !604)
!920 = !DILocation(line: 149, column: 38, scope: !604)
!921 = !DILocation(line: 149, column: 44, scope: !604)
!922 = !DILocation(line: 149, column: 47, scope: !604)
!923 = !DILocation(line: 149, column: 56, scope: !604)
!924 = !DILocation(line: 149, column: 59, scope: !604)
!925 = !DILocation(line: 149, column: 67, scope: !604)
!926 = !DILocation(line: 149, column: 54, scope: !604)
!927 = !DILocation(line: 150, column: 19, scope: !928)
!928 = distinct !DILexicalBlock(scope: !604, file: !2, line: 150, column: 13)
!929 = !DILocation(line: 150, column: 24, scope: !928)
!930 = !DILocation(line: 150, column: 16, scope: !928)
!931 = !DILocation(line: 150, column: 13, scope: !604)
!932 = !DILocation(line: 151, column: 39, scope: !928)
!933 = !DILocation(line: 151, column: 42, scope: !928)
!934 = !DILocation(line: 151, column: 52, scope: !928)
!935 = !DILocation(line: 151, column: 13, scope: !928)
!936 = !DILocation(line: 152, column: 5, scope: !605)
!937 = !DILocation(line: 152, column: 5, scope: !604)
!938 = !DILocation(line: 154, column: 5, scope: !9)
!939 = !DILocation(line: 155, column: 1, scope: !9)
!940 = !DISubprogram(name: "ck_calloc", scope: !941, file: !941, line: 78, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DIFile(filename: "spack-src/src/ck.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "734bf373e0ae340c3941f9a893874c6a")
!942 = !DISubroutineType(types: !943)
!943 = !{!25, !183, !183}
!944 = !DISubprogram(name: "free", scope: !945, file: !945, line: 555, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!946 = distinct !DISubprogram(name: "mod_userdir_patch_config", scope: !2, file: !2, line: 82, type: !947, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !950)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !949, !258}
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!950 = !{!951, !952, !953, !955}
!951 = !DILocalVariable(name: "r", arg: 1, scope: !946, file: !2, line: 82, type: !949)
!952 = !DILocalVariable(name: "p", arg: 2, scope: !946, file: !2, line: 82, type: !258)
!953 = !DILocalVariable(name: "i", scope: !954, file: !2, line: 84, type: !45)
!954 = distinct !DILexicalBlock(scope: !946, file: !2, line: 84, column: 5)
!955 = !DILocalVariable(name: "used", scope: !954, file: !2, line: 84, type: !45)
!956 = !DILocation(line: 82, column: 57, scope: !946)
!957 = !DILocation(line: 82, column: 80, scope: !946)
!958 = !DILocation(line: 83, column: 13, scope: !946)
!959 = !DILocation(line: 83, column: 16, scope: !946)
!960 = !DILocation(line: 83, column: 23, scope: !946)
!961 = !DILocation(line: 83, column: 26, scope: !946)
!962 = !DILocation(line: 83, column: 5, scope: !946)
!963 = !DILocation(line: 84, column: 10, scope: !954)
!964 = !DILocation(line: 84, column: 14, scope: !954)
!965 = !DILocation(line: 84, column: 21, scope: !954)
!966 = !DILocation(line: 84, column: 28, scope: !954)
!967 = !DILocation(line: 84, column: 31, scope: !954)
!968 = !DILocation(line: 84, column: 40, scope: !969)
!969 = distinct !DILexicalBlock(scope: !954, file: !2, line: 84, column: 5)
!970 = !DILocation(line: 84, column: 44, scope: !969)
!971 = !DILocation(line: 84, column: 42, scope: !969)
!972 = !DILocation(line: 84, column: 5, scope: !954)
!973 = !DILocation(line: 84, column: 5, scope: !969)
!974 = !DILocation(line: 85, column: 31, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !2, line: 85, column: 13)
!976 = distinct !DILexicalBlock(scope: !969, file: !2, line: 84, column: 55)
!977 = !DILocation(line: 85, column: 44, scope: !975)
!978 = !DILocation(line: 85, column: 47, scope: !975)
!979 = !DILocation(line: 85, column: 54, scope: !975)
!980 = !DILocation(line: 85, column: 57, scope: !975)
!981 = !DILocation(line: 85, column: 13, scope: !975)
!982 = !DILocation(line: 85, column: 13, scope: !976)
!983 = !DILocation(line: 86, column: 39, scope: !975)
!984 = !DILocation(line: 86, column: 42, scope: !975)
!985 = !DILocation(line: 86, column: 48, scope: !975)
!986 = !DILocation(line: 86, column: 51, scope: !975)
!987 = !DILocation(line: 86, column: 60, scope: !975)
!988 = !DILocation(line: 86, column: 63, scope: !975)
!989 = !DILocation(line: 86, column: 70, scope: !975)
!990 = !DILocation(line: 86, column: 73, scope: !975)
!991 = !DILocation(line: 86, column: 58, scope: !975)
!992 = !DILocation(line: 86, column: 13, scope: !975)
!993 = !DILocation(line: 87, column: 5, scope: !976)
!994 = !DILocation(line: 84, column: 50, scope: !969)
!995 = distinct !{!995, !972, !996, !900}
!996 = !DILocation(line: 87, column: 5, scope: !954)
!997 = !DILocation(line: 88, column: 1, scope: !946)
!998 = !DISubprogram(name: "strchr", scope: !999, file: !999, line: 246, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!106, !114, !45}
!1002 = !DISubprogram(name: "http_response_redirect_to_directory", scope: !1003, file: !1003, line: 50, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DIFile(filename: "spack-src/src/response.h", directory: "/local-ssd/lighttpd-rpmcfxehvwqgxadux4qnum7g77xnot3q-build/aidengro/spack-stage-lighttpd-1.4.69-rpmcfxehvwqgxadux4qnum7g77xnot3q", checksumkind: CSK_MD5, checksum: "ace3bc7588d2fb066701bb10c515f1ff")
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!45, !314, !45}
!1006 = distinct !DISubprogram(name: "mod_userdir_in_vlist", scope: !2, file: !2, line: 165, type: !1007, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1010)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!45, !1009, !700, !703}
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!1010 = !{!1011, !1012, !1013, !1014, !1016, !1017}
!1011 = !DILocalVariable(name: "a", arg: 1, scope: !1006, file: !2, line: 165, type: !1009)
!1012 = !DILocalVariable(name: "k", arg: 2, scope: !1006, file: !2, line: 165, type: !700)
!1013 = !DILocalVariable(name: "klen", arg: 3, scope: !1006, file: !2, line: 165, type: !703)
!1014 = !DILocalVariable(name: "i", scope: !1015, file: !2, line: 166, type: !108)
!1015 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 166, column: 5)
!1016 = !DILocalVariable(name: "used", scope: !1015, file: !2, line: 166, type: !108)
!1017 = !DILocalVariable(name: "ds", scope: !1018, file: !2, line: 167, type: !1020)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 166, column: 57)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 166, column: 5)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1021 = !DILocation(line: 165, column: 53, scope: !1006)
!1022 = !DILocation(line: 165, column: 75, scope: !1006)
!1023 = !DILocation(line: 165, column: 91, scope: !1006)
!1024 = !DILocation(line: 166, column: 10, scope: !1015)
!1025 = !DILocation(line: 166, column: 19, scope: !1015)
!1026 = !DILocation(line: 166, column: 26, scope: !1015)
!1027 = !DILocation(line: 166, column: 33, scope: !1015)
!1028 = !DILocation(line: 166, column: 36, scope: !1015)
!1029 = !{!714, !679, i64 16}
!1030 = !DILocation(line: 166, column: 42, scope: !1019)
!1031 = !DILocation(line: 166, column: 46, scope: !1019)
!1032 = !DILocation(line: 166, column: 44, scope: !1019)
!1033 = !DILocation(line: 166, column: 5, scope: !1015)
!1034 = !DILocation(line: 167, column: 9, scope: !1018)
!1035 = !DILocation(line: 167, column: 35, scope: !1018)
!1036 = !DILocation(line: 167, column: 61, scope: !1018)
!1037 = !DILocation(line: 167, column: 64, scope: !1018)
!1038 = !{!714, !632, i64 0}
!1039 = !DILocation(line: 167, column: 69, scope: !1018)
!1040 = !DILocation(line: 168, column: 29, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 168, column: 13)
!1042 = !DILocation(line: 168, column: 33, scope: !1041)
!1043 = !DILocation(line: 168, column: 40, scope: !1041)
!1044 = !DILocation(line: 168, column: 43, scope: !1041)
!1045 = !DILocation(line: 168, column: 13, scope: !1041)
!1046 = !DILocation(line: 168, column: 13, scope: !1018)
!1047 = !DILocation(line: 168, column: 50, scope: !1041)
!1048 = !DILocation(line: 169, column: 5, scope: !1019)
!1049 = !DILocation(line: 169, column: 5, scope: !1018)
!1050 = !DILocation(line: 166, column: 52, scope: !1019)
!1051 = !DILocation(line: 166, column: 5, scope: !1019)
!1052 = distinct !{!1052, !1033, !1053, !900}
!1053 = !DILocation(line: 169, column: 5, scope: !1015)
!1054 = !DILocation(line: 170, column: 5, scope: !1006)
!1055 = !DILocation(line: 171, column: 1, scope: !1006)
!1056 = distinct !DISubprogram(name: "mod_userdir_in_vlist_nc", scope: !2, file: !2, line: 157, type: !1007, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1063, !1064}
!1058 = !DILocalVariable(name: "a", arg: 1, scope: !1056, file: !2, line: 157, type: !1009)
!1059 = !DILocalVariable(name: "k", arg: 2, scope: !1056, file: !2, line: 157, type: !700)
!1060 = !DILocalVariable(name: "klen", arg: 3, scope: !1056, file: !2, line: 157, type: !703)
!1061 = !DILocalVariable(name: "i", scope: !1062, file: !2, line: 158, type: !108)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 158, column: 5)
!1063 = !DILocalVariable(name: "used", scope: !1062, file: !2, line: 158, type: !108)
!1064 = !DILocalVariable(name: "ds", scope: !1065, file: !2, line: 159, type: !1020)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 158, column: 57)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 158, column: 5)
!1067 = !DILocation(line: 157, column: 56, scope: !1056)
!1068 = !DILocation(line: 157, column: 78, scope: !1056)
!1069 = !DILocation(line: 157, column: 94, scope: !1056)
!1070 = !DILocation(line: 158, column: 10, scope: !1062)
!1071 = !DILocation(line: 158, column: 19, scope: !1062)
!1072 = !DILocation(line: 158, column: 26, scope: !1062)
!1073 = !DILocation(line: 158, column: 33, scope: !1062)
!1074 = !DILocation(line: 158, column: 36, scope: !1062)
!1075 = !DILocation(line: 158, column: 42, scope: !1066)
!1076 = !DILocation(line: 158, column: 46, scope: !1066)
!1077 = !DILocation(line: 158, column: 44, scope: !1066)
!1078 = !DILocation(line: 158, column: 5, scope: !1062)
!1079 = !DILocation(line: 159, column: 9, scope: !1065)
!1080 = !DILocation(line: 159, column: 35, scope: !1065)
!1081 = !DILocation(line: 159, column: 61, scope: !1065)
!1082 = !DILocation(line: 159, column: 64, scope: !1065)
!1083 = !DILocation(line: 159, column: 69, scope: !1065)
!1084 = !DILocation(line: 160, column: 35, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 160, column: 13)
!1086 = !DILocation(line: 160, column: 39, scope: !1085)
!1087 = !DILocation(line: 160, column: 46, scope: !1085)
!1088 = !DILocation(line: 160, column: 49, scope: !1085)
!1089 = !DILocation(line: 160, column: 13, scope: !1085)
!1090 = !DILocation(line: 160, column: 13, scope: !1065)
!1091 = !DILocation(line: 160, column: 56, scope: !1085)
!1092 = !DILocation(line: 161, column: 5, scope: !1066)
!1093 = !DILocation(line: 161, column: 5, scope: !1065)
!1094 = !DILocation(line: 158, column: 52, scope: !1066)
!1095 = !DILocation(line: 158, column: 5, scope: !1066)
!1096 = distinct !{!1096, !1078, !1097, !900}
!1097 = !DILocation(line: 161, column: 5, scope: !1062)
!1098 = !DILocation(line: 162, column: 5, scope: !1056)
!1099 = !DILocation(line: 163, column: 1, scope: !1056)
!1100 = distinct !DISubprogram(name: "mod_userdir_docroot_construct", scope: !2, file: !2, line: 174, type: !1101, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!12, !949, !258, !700, !703}
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1112, !1114, !1118, !1119, !1121, !1123, !1135, !1139, !1140, !1142, !1145, !1148, !1152}
!1104 = !DILocalVariable(name: "r", arg: 1, scope: !1100, file: !2, line: 174, type: !949)
!1105 = !DILocalVariable(name: "p", arg: 2, scope: !1100, file: !2, line: 174, type: !258)
!1106 = !DILocalVariable(name: "uptr", arg: 3, scope: !1100, file: !2, line: 174, type: !700)
!1107 = !DILocalVariable(name: "ulen", arg: 4, scope: !1100, file: !2, line: 174, type: !703)
!1108 = !DILocalVariable(name: "u", scope: !1100, file: !2, line: 175, type: !1109)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !1110)
!1110 = !{!1111}
!1111 = !DISubrange(count: 256)
!1112 = !DILocalVariable(name: "b", scope: !1100, file: !2, line: 182, type: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!1114 = !DILocalVariable(name: "cur_ts", scope: !1115, file: !2, line: 187, type: !1117)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 184, column: 28)
!1116 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 184, column: 9)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!1118 = !DILocalVariable(name: "cached", scope: !1115, file: !2, line: 188, type: !45)
!1119 = !DILocalVariable(name: "cache_sz", scope: !1115, file: !2, line: 189, type: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1121 = !DILocalVariable(name: "i", scope: !1122, file: !2, line: 190, type: !45)
!1122 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 190, column: 9)
!1123 = !DILocalVariable(name: "pwd", scope: !1115, file: !2, line: 197, type: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !1126, line: 49, size: 384, elements: !1127)
!1126 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !1125, file: !1126, line: 51, baseType: !106, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !1125, file: !1126, line: 52, baseType: !106, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !1125, file: !1126, line: 54, baseType: !524, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !1125, file: !1126, line: 55, baseType: !526, size: 32, offset: 160)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !1125, file: !1126, line: 56, baseType: !106, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !1125, file: !1126, line: 57, baseType: !106, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !1125, file: !1126, line: 58, baseType: !106, size: 64, offset: 320)
!1135 = !DILocalVariable(name: "plen", scope: !1136, file: !2, line: 203, type: !703)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 202, column: 39)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 202, column: 18)
!1138 = distinct !DILexicalBlock(scope: !1115, file: !2, line: 198, column: 13)
!1139 = !DILocalVariable(name: "cache_ts", scope: !1136, file: !2, line: 211, type: !503)
!1140 = !DILocalVariable(name: "i", scope: !1141, file: !2, line: 212, type: !45)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 212, column: 13)
!1142 = !DILocalVariable(name: "i", scope: !1143, file: !2, line: 233, type: !183)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 233, column: 9)
!1144 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 225, column: 12)
!1145 = !DILocalVariable(name: "c", scope: !1146, file: !2, line: 234, type: !1120)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 233, column: 43)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 233, column: 9)
!1148 = !DILocalVariable(name: "i", scope: !1149, file: !2, line: 241, type: !183)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 241, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 240, column: 48)
!1151 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 240, column: 13)
!1152 = !DILocalVariable(name: "rel_url", scope: !1100, file: !2, line: 272, type: !106)
!1153 = !DILocation(line: 174, column: 67, scope: !1100)
!1154 = !DILocation(line: 174, column: 90, scope: !1100)
!1155 = !DILocation(line: 174, column: 112, scope: !1100)
!1156 = !DILocation(line: 174, column: 131, scope: !1100)
!1157 = !DILocation(line: 175, column: 5, scope: !1100)
!1158 = !DILocation(line: 175, column: 10, scope: !1100)
!1159 = !DILocation(line: 176, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 176, column: 9)
!1161 = !DILocation(line: 176, column: 14, scope: !1160)
!1162 = !DILocation(line: 176, column: 9, scope: !1100)
!1163 = !DILocation(line: 176, column: 28, scope: !1160)
!1164 = !DILocation(line: 178, column: 5, scope: !1100)
!1165 = !DILocation(line: 178, column: 15, scope: !1100)
!1166 = !DILocation(line: 178, column: 21, scope: !1100)
!1167 = !DILocation(line: 179, column: 7, scope: !1100)
!1168 = !DILocation(line: 179, column: 5, scope: !1100)
!1169 = !DILocation(line: 179, column: 13, scope: !1100)
!1170 = !DILocation(line: 182, column: 5, scope: !1100)
!1171 = !DILocation(line: 182, column: 20, scope: !1100)
!1172 = !DILocation(line: 182, column: 24, scope: !1100)
!1173 = !DILocation(line: 182, column: 27, scope: !1100)
!1174 = !{!711, !632, i64 560}
!1175 = !DILocation(line: 184, column: 10, scope: !1116)
!1176 = !DILocation(line: 184, column: 13, scope: !1116)
!1177 = !DILocation(line: 184, column: 18, scope: !1116)
!1178 = !{!739, !632, i64 88}
!1179 = !DILocation(line: 184, column: 9, scope: !1100)
!1180 = !DILocation(line: 187, column: 9, scope: !1115)
!1181 = !DILocation(line: 187, column: 29, scope: !1115)
!1182 = !DILocation(line: 187, column: 38, scope: !1115)
!1183 = !DILocation(line: 188, column: 9, scope: !1115)
!1184 = !DILocation(line: 188, column: 13, scope: !1115)
!1185 = !DILocation(line: 189, column: 9, scope: !1115)
!1186 = !DILocation(line: 189, column: 19, scope: !1115)
!1187 = !DILocation(line: 190, column: 14, scope: !1122)
!1188 = !DILocation(line: 190, column: 18, scope: !1122)
!1189 = !DILocation(line: 190, column: 25, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 190, column: 9)
!1191 = !DILocation(line: 190, column: 27, scope: !1190)
!1192 = !DILocation(line: 190, column: 9, scope: !1122)
!1193 = !DILocation(line: 191, column: 17, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 191, column: 17)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 190, column: 44)
!1196 = !DILocation(line: 191, column: 26, scope: !1194)
!1197 = !DILocation(line: 191, column: 29, scope: !1194)
!1198 = !DILocation(line: 191, column: 38, scope: !1194)
!1199 = !DILocation(line: 191, column: 24, scope: !1194)
!1200 = !DILocation(line: 191, column: 41, scope: !1194)
!1201 = !DILocation(line: 191, column: 46, scope: !1194)
!1202 = !DILocation(line: 191, column: 49, scope: !1194)
!1203 = !DILocation(line: 191, column: 52, scope: !1194)
!1204 = !DILocation(line: 191, column: 63, scope: !1194)
!1205 = !DILocation(line: 191, column: 66, scope: !1194)
!1206 = !{!678, !679, i64 8}
!1207 = !DILocation(line: 192, column: 17, scope: !1194)
!1208 = !DILocation(line: 192, column: 36, scope: !1194)
!1209 = !DILocation(line: 192, column: 39, scope: !1194)
!1210 = !DILocation(line: 192, column: 50, scope: !1194)
!1211 = !DILocation(line: 192, column: 54, scope: !1194)
!1212 = !DILocation(line: 192, column: 57, scope: !1194)
!1213 = !DILocation(line: 192, column: 20, scope: !1194)
!1214 = !DILocation(line: 191, column: 17, scope: !1195)
!1215 = !DILocation(line: 193, column: 26, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 192, column: 64)
!1217 = !DILocation(line: 193, column: 24, scope: !1216)
!1218 = !DILocation(line: 194, column: 17, scope: !1216)
!1219 = !DILocation(line: 196, column: 9, scope: !1195)
!1220 = !DILocation(line: 190, column: 39, scope: !1190)
!1221 = !DILocation(line: 190, column: 9, scope: !1190)
!1222 = distinct !{!1222, !1192, !1223, !900}
!1223 = !DILocation(line: 196, column: 9, scope: !1122)
!1224 = !DILocation(line: 197, column: 9, scope: !1115)
!1225 = !DILocation(line: 197, column: 24, scope: !1115)
!1226 = !DILocation(line: 198, column: 13, scope: !1138)
!1227 = !DILocation(line: 198, column: 20, scope: !1138)
!1228 = !DILocation(line: 198, column: 13, scope: !1115)
!1229 = !DILocation(line: 199, column: 35, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 198, column: 26)
!1231 = !DILocation(line: 199, column: 38, scope: !1230)
!1232 = !DILocation(line: 200, column: 38, scope: !1230)
!1233 = !DILocation(line: 199, column: 13, scope: !1230)
!1234 = !DILocation(line: 201, column: 9, scope: !1230)
!1235 = !DILocation(line: 202, column: 34, scope: !1137)
!1236 = !DILocation(line: 202, column: 25, scope: !1137)
!1237 = !DILocation(line: 202, column: 23, scope: !1137)
!1238 = !DILocation(line: 202, column: 18, scope: !1138)
!1239 = !DILocation(line: 203, column: 13, scope: !1136)
!1240 = !DILocation(line: 203, column: 26, scope: !1136)
!1241 = !DILocation(line: 203, column: 40, scope: !1136)
!1242 = !DILocation(line: 203, column: 45, scope: !1136)
!1243 = !{!1244, !632, i64 32}
!1244 = !{!"passwd", !632, i64 0, !632, i64 8, !679, i64 16, !679, i64 20, !632, i64 24, !632, i64 32, !632, i64 40}
!1245 = !DILocation(line: 203, column: 33, scope: !1136)
!1246 = !DILocation(line: 204, column: 35, scope: !1136)
!1247 = !DILocation(line: 204, column: 38, scope: !1136)
!1248 = !DILocation(line: 204, column: 43, scope: !1136)
!1249 = !DILocation(line: 204, column: 51, scope: !1136)
!1250 = !DILocation(line: 205, column: 38, scope: !1136)
!1251 = !DILocation(line: 204, column: 13, scope: !1136)
!1252 = !DILocation(line: 206, column: 40, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 206, column: 17)
!1254 = !DILocation(line: 206, column: 18, scope: !1253)
!1255 = !DILocation(line: 206, column: 17, scope: !1136)
!1256 = !DILocation(line: 207, column: 17, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 206, column: 44)
!1258 = !DILocation(line: 210, column: 20, scope: !1136)
!1259 = !DILocation(line: 211, column: 13, scope: !1136)
!1260 = !DILocation(line: 211, column: 27, scope: !1136)
!1261 = !DILocation(line: 211, column: 38, scope: !1136)
!1262 = !DILocation(line: 211, column: 41, scope: !1136)
!1263 = !DILocation(line: 212, column: 18, scope: !1141)
!1264 = !DILocation(line: 212, column: 22, scope: !1141)
!1265 = !DILocation(line: 212, column: 29, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 212, column: 13)
!1267 = !DILocation(line: 212, column: 31, scope: !1266)
!1268 = !DILocation(line: 212, column: 13, scope: !1141)
!1269 = !DILocation(line: 212, column: 13, scope: !1266)
!1270 = !DILocation(line: 213, column: 21, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 213, column: 21)
!1272 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 212, column: 48)
!1273 = !DILocation(line: 213, column: 32, scope: !1271)
!1274 = !DILocation(line: 213, column: 35, scope: !1271)
!1275 = !DILocation(line: 213, column: 44, scope: !1271)
!1276 = !DILocation(line: 213, column: 30, scope: !1271)
!1277 = !DILocation(line: 213, column: 21, scope: !1272)
!1278 = !DILocation(line: 214, column: 32, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 213, column: 48)
!1280 = !DILocation(line: 214, column: 35, scope: !1279)
!1281 = !DILocation(line: 214, column: 44, scope: !1279)
!1282 = !DILocation(line: 214, column: 30, scope: !1279)
!1283 = !DILocation(line: 215, column: 30, scope: !1279)
!1284 = !DILocation(line: 215, column: 28, scope: !1279)
!1285 = !DILocation(line: 216, column: 17, scope: !1279)
!1286 = !DILocation(line: 217, column: 13, scope: !1272)
!1287 = !DILocation(line: 212, column: 43, scope: !1266)
!1288 = distinct !{!1288, !1268, !1289, !900}
!1289 = !DILocation(line: 217, column: 13, scope: !1141)
!1290 = !DILocation(line: 218, column: 35, scope: !1136)
!1291 = !DILocation(line: 218, column: 13, scope: !1136)
!1292 = !DILocation(line: 218, column: 16, scope: !1136)
!1293 = !DILocation(line: 218, column: 25, scope: !1136)
!1294 = !DILocation(line: 218, column: 33, scope: !1136)
!1295 = !DILocation(line: 219, column: 37, scope: !1136)
!1296 = !DILocation(line: 219, column: 40, scope: !1136)
!1297 = !DILocation(line: 219, column: 51, scope: !1136)
!1298 = !DILocation(line: 219, column: 60, scope: !1136)
!1299 = !DILocation(line: 219, column: 63, scope: !1136)
!1300 = !DILocation(line: 219, column: 68, scope: !1136)
!1301 = !DILocation(line: 219, column: 13, scope: !1136)
!1302 = !DILocation(line: 220, column: 37, scope: !1136)
!1303 = !DILocation(line: 220, column: 40, scope: !1136)
!1304 = !DILocation(line: 220, column: 51, scope: !1136)
!1305 = !DILocation(line: 220, column: 60, scope: !1136)
!1306 = !DILocation(line: 220, column: 63, scope: !1136)
!1307 = !DILocation(line: 220, column: 13, scope: !1136)
!1308 = !DILocation(line: 221, column: 9, scope: !1137)
!1309 = !DILocation(line: 221, column: 9, scope: !1136)
!1310 = !DILocation(line: 224, column: 13, scope: !1137)
!1311 = !DILocation(line: 225, column: 5, scope: !1116)
!1312 = !DILocation(line: 225, column: 5, scope: !1115)
!1313 = !DILocation(line: 229, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 229, column: 13)
!1315 = !DILocation(line: 229, column: 18, scope: !1314)
!1316 = !DILocation(line: 229, column: 23, scope: !1314)
!1317 = !DILocation(line: 229, column: 27, scope: !1314)
!1318 = !DILocation(line: 229, column: 32, scope: !1314)
!1319 = !DILocation(line: 229, column: 39, scope: !1314)
!1320 = !DILocation(line: 229, column: 48, scope: !1314)
!1321 = !DILocation(line: 229, column: 45, scope: !1314)
!1322 = !DILocation(line: 229, column: 53, scope: !1314)
!1323 = !DILocation(line: 229, column: 56, scope: !1314)
!1324 = !DILocation(line: 229, column: 61, scope: !1314)
!1325 = !DILocation(line: 229, column: 13, scope: !1144)
!1326 = !DILocation(line: 230, column: 13, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 229, column: 71)
!1328 = !DILocation(line: 233, column: 14, scope: !1143)
!1329 = !DILocation(line: 233, column: 21, scope: !1143)
!1330 = !DILocation(line: 233, column: 28, scope: !1147)
!1331 = !DILocation(line: 233, column: 32, scope: !1147)
!1332 = !DILocation(line: 233, column: 30, scope: !1147)
!1333 = !DILocation(line: 233, column: 9, scope: !1143)
!1334 = !DILocation(line: 234, column: 13, scope: !1146)
!1335 = !DILocation(line: 234, column: 23, scope: !1146)
!1336 = !DILocation(line: 234, column: 29, scope: !1146)
!1337 = !DILocation(line: 234, column: 27, scope: !1146)
!1338 = !DILocation(line: 235, column: 33, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 235, column: 17)
!1340 = !DILocation(line: 235, column: 19, scope: !1339)
!1341 = !DILocation(line: 235, column: 36, scope: !1339)
!1342 = !DILocation(line: 235, column: 39, scope: !1339)
!1343 = !DILocation(line: 235, column: 41, scope: !1339)
!1344 = !DILocation(line: 235, column: 48, scope: !1339)
!1345 = !DILocation(line: 235, column: 51, scope: !1339)
!1346 = !DILocation(line: 235, column: 53, scope: !1339)
!1347 = !DILocation(line: 235, column: 60, scope: !1339)
!1348 = !DILocation(line: 235, column: 63, scope: !1339)
!1349 = !DILocation(line: 235, column: 65, scope: !1339)
!1350 = !DILocation(line: 235, column: 17, scope: !1146)
!1351 = !DILocation(line: 236, column: 17, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 235, column: 74)
!1353 = !DILocation(line: 238, column: 9, scope: !1147)
!1354 = !DILocation(line: 238, column: 9, scope: !1146)
!1355 = !DILocation(line: 233, column: 38, scope: !1147)
!1356 = !DILocation(line: 233, column: 9, scope: !1147)
!1357 = distinct !{!1357, !1333, !1358, !900}
!1358 = !DILocation(line: 238, column: 9, scope: !1143)
!1359 = !DILocation(line: 240, column: 13, scope: !1151)
!1360 = !DILocation(line: 240, column: 16, scope: !1151)
!1361 = !DILocation(line: 240, column: 21, scope: !1151)
!1362 = !DILocation(line: 240, column: 13, scope: !1144)
!1363 = !DILocation(line: 241, column: 18, scope: !1149)
!1364 = !DILocation(line: 241, column: 25, scope: !1149)
!1365 = !DILocation(line: 241, column: 32, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 241, column: 13)
!1367 = !DILocation(line: 241, column: 36, scope: !1366)
!1368 = !DILocation(line: 241, column: 34, scope: !1366)
!1369 = !DILocation(line: 241, column: 13, scope: !1149)
!1370 = !DILocation(line: 241, column: 13, scope: !1366)
!1371 = !DILocation(line: 242, column: 21, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 242, column: 21)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 241, column: 47)
!1374 = !DILocation(line: 242, column: 21, scope: !1373)
!1375 = !DILocation(line: 242, column: 44, scope: !1372)
!1376 = !DILocation(line: 242, column: 42, scope: !1372)
!1377 = !DILocation(line: 242, column: 47, scope: !1372)
!1378 = !DILocation(line: 243, column: 13, scope: !1373)
!1379 = !DILocation(line: 241, column: 42, scope: !1366)
!1380 = distinct !{!1380, !1369, !1381, !900}
!1381 = !DILocation(line: 243, column: 13, scope: !1149)
!1382 = !DILocation(line: 244, column: 9, scope: !1150)
!1383 = !DILocation(line: 246, column: 28, scope: !1144)
!1384 = !DILocation(line: 246, column: 31, scope: !1144)
!1385 = !DILocation(line: 246, column: 34, scope: !1144)
!1386 = !DILocation(line: 246, column: 39, scope: !1144)
!1387 = !DILocation(line: 246, column: 9, scope: !1144)
!1388 = !DILocation(line: 247, column: 13, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 247, column: 13)
!1390 = !DILocation(line: 247, column: 16, scope: !1389)
!1391 = !DILocation(line: 247, column: 21, scope: !1389)
!1392 = !{!739, !712, i64 96}
!1393 = !DILocation(line: 247, column: 13, scope: !1144)
!1394 = !DILocation(line: 248, column: 17, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 248, column: 17)
!1396 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 247, column: 34)
!1397 = !DILocation(line: 248, column: 22, scope: !1395)
!1398 = !DILocation(line: 248, column: 17, scope: !1396)
!1399 = !DILocation(line: 248, column: 30, scope: !1395)
!1400 = !DILocation(line: 249, column: 36, scope: !1396)
!1401 = !DILocation(line: 249, column: 39, scope: !1396)
!1402 = !DILocation(line: 249, column: 13, scope: !1396)
!1403 = !DILocation(line: 250, column: 9, scope: !1396)
!1404 = !DILocation(line: 251, column: 32, scope: !1144)
!1405 = !DILocation(line: 251, column: 35, scope: !1144)
!1406 = !DILocation(line: 251, column: 38, scope: !1144)
!1407 = !DILocation(line: 251, column: 9, scope: !1144)
!1408 = !DILocation(line: 252, column: 32, scope: !1144)
!1409 = !DILocation(line: 252, column: 35, scope: !1144)
!1410 = !DILocation(line: 252, column: 9, scope: !1144)
!1411 = !DILocation(line: 255, column: 25, scope: !1100)
!1412 = !DILocation(line: 255, column: 28, scope: !1100)
!1413 = !DILocation(line: 255, column: 37, scope: !1100)
!1414 = !DILocation(line: 255, column: 46, scope: !1100)
!1415 = !DILocation(line: 255, column: 5, scope: !1100)
!1416 = !DILocation(line: 256, column: 25, scope: !1100)
!1417 = !DILocation(line: 256, column: 28, scope: !1100)
!1418 = !DILocation(line: 256, column: 37, scope: !1100)
!1419 = !DILocation(line: 256, column: 43, scope: !1100)
!1420 = !DILocation(line: 256, column: 5, scope: !1100)
!1421 = !DILocation(line: 264, column: 26, scope: !1100)
!1422 = !DILocation(line: 264, column: 29, scope: !1100)
!1423 = !DILocation(line: 264, column: 38, scope: !1100)
!1424 = !DILocation(line: 264, column: 5, scope: !1100)
!1425 = !DILocation(line: 272, column: 5, scope: !1100)
!1426 = !DILocation(line: 272, column: 11, scope: !1100)
!1427 = !DILocation(line: 273, column: 35, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 273, column: 9)
!1429 = !DILocation(line: 273, column: 38, scope: !1428)
!1430 = !DILocation(line: 273, column: 47, scope: !1428)
!1431 = !DILocation(line: 273, column: 56, scope: !1428)
!1432 = !{!711, !632, i64 368}
!1433 = !DILocation(line: 273, column: 60, scope: !1428)
!1434 = !DILocation(line: 273, column: 28, scope: !1428)
!1435 = !DILocation(line: 273, column: 26, scope: !1428)
!1436 = !DILocation(line: 273, column: 14, scope: !1428)
!1437 = !DILocation(line: 273, column: 9, scope: !1100)
!1438 = !DILocation(line: 274, column: 31, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 273, column: 72)
!1440 = !DILocation(line: 274, column: 34, scope: !1439)
!1441 = !DILocation(line: 274, column: 43, scope: !1439)
!1442 = !DILocation(line: 274, column: 49, scope: !1439)
!1443 = !DILocation(line: 274, column: 57, scope: !1439)
!1444 = !DILocation(line: 274, column: 9, scope: !1439)
!1445 = !DILocation(line: 275, column: 5, scope: !1439)
!1446 = !DILocation(line: 277, column: 5, scope: !1100)
!1447 = !DILocation(line: 278, column: 1, scope: !1100)
!1448 = !DISubprogram(name: "config_check_cond", scope: !167, file: !167, line: 184, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1449 = distinct !DISubprogram(name: "mod_userdir_merge_config", scope: !2, file: !2, line: 76, type: !1450, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1454)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1452, !606}
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!1454 = !{!1455, !1456}
!1455 = !DILocalVariable(name: "pconf", arg: 1, scope: !1449, file: !2, line: 76, type: !1452)
!1456 = !DILocalVariable(name: "cpv", arg: 2, scope: !1449, file: !2, line: 76, type: !606)
!1457 = !DILocation(line: 76, column: 60, scope: !1449)
!1458 = !DILocation(line: 76, column: 96, scope: !1449)
!1459 = !DILocation(line: 77, column: 5, scope: !1449)
!1460 = !DILocation(line: 78, column: 38, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 77, column: 8)
!1462 = !DILocation(line: 78, column: 45, scope: !1461)
!1463 = !DILocation(line: 78, column: 9, scope: !1461)
!1464 = !DILocation(line: 79, column: 5, scope: !1461)
!1465 = !DILocation(line: 79, column: 15, scope: !1449)
!1466 = !DILocation(line: 79, column: 23, scope: !1449)
!1467 = !DILocation(line: 79, column: 28, scope: !1449)
!1468 = distinct !{!1468, !1459, !1469, !900}
!1469 = !DILocation(line: 79, column: 33, scope: !1449)
!1470 = !DILocation(line: 80, column: 1, scope: !1449)
!1471 = distinct !DISubprogram(name: "mod_userdir_merge_config_cpv", scope: !2, file: !2, line: 51, type: !1472, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1475)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !1452, !1474}
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!1475 = !{!1476, !1477}
!1476 = !DILocalVariable(name: "pconf", arg: 1, scope: !1471, file: !2, line: 51, type: !1452)
!1477 = !DILocalVariable(name: "cpv", arg: 2, scope: !1471, file: !2, line: 51, type: !1474)
!1478 = !DILocation(line: 51, column: 64, scope: !1471)
!1479 = !DILocation(line: 51, column: 107, scope: !1471)
!1480 = !DILocation(line: 52, column: 13, scope: !1471)
!1481 = !DILocation(line: 52, column: 18, scope: !1471)
!1482 = !DILocation(line: 52, column: 5, scope: !1471)
!1483 = !DILocation(line: 54, column: 23, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 52, column: 24)
!1485 = !DILocation(line: 54, column: 28, scope: !1484)
!1486 = !DILocation(line: 54, column: 30, scope: !1484)
!1487 = !DILocation(line: 54, column: 9, scope: !1484)
!1488 = !DILocation(line: 54, column: 16, scope: !1484)
!1489 = !DILocation(line: 54, column: 21, scope: !1484)
!1490 = !{!740, !632, i64 16}
!1491 = !DILocation(line: 55, column: 9, scope: !1484)
!1492 = !DILocation(line: 57, column: 31, scope: !1484)
!1493 = !DILocation(line: 57, column: 36, scope: !1484)
!1494 = !DILocation(line: 57, column: 38, scope: !1484)
!1495 = !DILocation(line: 57, column: 9, scope: !1484)
!1496 = !DILocation(line: 57, column: 16, scope: !1484)
!1497 = !DILocation(line: 57, column: 29, scope: !1484)
!1498 = !{!740, !632, i64 0}
!1499 = !DILocation(line: 58, column: 9, scope: !1484)
!1500 = !DILocation(line: 60, column: 31, scope: !1484)
!1501 = !DILocation(line: 60, column: 36, scope: !1484)
!1502 = !DILocation(line: 60, column: 38, scope: !1484)
!1503 = !DILocation(line: 60, column: 9, scope: !1484)
!1504 = !DILocation(line: 60, column: 16, scope: !1484)
!1505 = !DILocation(line: 60, column: 29, scope: !1484)
!1506 = !{!740, !632, i64 8}
!1507 = !DILocation(line: 61, column: 9, scope: !1484)
!1508 = !DILocation(line: 63, column: 27, scope: !1484)
!1509 = !DILocation(line: 63, column: 32, scope: !1484)
!1510 = !DILocation(line: 63, column: 34, scope: !1484)
!1511 = !DILocation(line: 63, column: 9, scope: !1484)
!1512 = !DILocation(line: 63, column: 16, scope: !1484)
!1513 = !DILocation(line: 63, column: 25, scope: !1484)
!1514 = !{!740, !632, i64 24}
!1515 = !DILocation(line: 64, column: 9, scope: !1484)
!1516 = !DILocation(line: 66, column: 30, scope: !1484)
!1517 = !DILocation(line: 66, column: 35, scope: !1484)
!1518 = !DILocation(line: 66, column: 37, scope: !1484)
!1519 = !DILocation(line: 66, column: 9, scope: !1484)
!1520 = !DILocation(line: 66, column: 16, scope: !1484)
!1521 = !DILocation(line: 66, column: 28, scope: !1484)
!1522 = !{!740, !712, i64 32}
!1523 = !DILocation(line: 67, column: 9, scope: !1484)
!1524 = !DILocation(line: 69, column: 25, scope: !1484)
!1525 = !DILocation(line: 69, column: 30, scope: !1484)
!1526 = !DILocation(line: 69, column: 32, scope: !1484)
!1527 = !DILocation(line: 69, column: 9, scope: !1484)
!1528 = !DILocation(line: 69, column: 16, scope: !1484)
!1529 = !DILocation(line: 69, column: 23, scope: !1484)
!1530 = !{!740, !712, i64 34}
!1531 = !DILocation(line: 70, column: 9, scope: !1484)
!1532 = !DILocation(line: 72, column: 9, scope: !1484)
!1533 = !DILocation(line: 74, column: 1, scope: !1471)
!1534 = !DISubprogram(name: "buffer_eq_slen", scope: !102, file: !102, line: 159, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!45, !1537, !700, !703}
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!1538 = !DISubprogram(name: "buffer_eq_icase_slen", scope: !102, file: !102, line: 155, type: !1535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1539 = !DISubprogram(name: "buffer_copy_path_len2", scope: !102, file: !102, line: 246, type: !1540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1542, !1543, !183, !1543, !183}
!1542 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!1543 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!1544 = distinct !DISubprogram(name: "buffer_clen", scope: !102, file: !102, line: 283, type: !1545, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!108, !291}
!1547 = !{!1548}
!1548 = !DILocalVariable(name: "b", arg: 1, scope: !1544, file: !102, line: 283, type: !291)
!1549 = !DILocation(line: 283, column: 51, scope: !1544)
!1550 = !DILocation(line: 284, column: 12, scope: !1544)
!1551 = !DILocation(line: 284, column: 15, scope: !1544)
!1552 = !DILocation(line: 284, column: 28, scope: !1544)
!1553 = !DILocation(line: 284, column: 31, scope: !1544)
!1554 = !DILocation(line: 284, column: 25, scope: !1544)
!1555 = !DILocation(line: 284, column: 20, scope: !1544)
!1556 = !DILocation(line: 284, column: 5, scope: !1544)
!1557 = !DISubprogram(name: "getpwnam", scope: !1126, file: !1126, line: 116, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1124, !114}
!1560 = !DISubprogram(name: "strlen", scope: !999, file: !999, line: 407, type: !1561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!185, !114}
!1563 = !DISubprogram(name: "stat_cache_path_isdir", scope: !499, file: !499, line: 62, type: !1564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!45, !291}
!1566 = !DISubprogram(name: "buffer_copy_string_len", scope: !102, file: !102, line: 103, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !1542, !1543, !183}
!1569 = distinct !DISubprogram(name: "light_isalnum", scope: !102, file: !102, line: 232, type: !1570, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!45, !45}
!1572 = !{!1573}
!1573 = !DILocalVariable(name: "c", arg: 1, scope: !1569, file: !102, line: 232, type: !45)
!1574 = !DILocation(line: 232, column: 37, scope: !1569)
!1575 = !DILocation(line: 233, column: 23, scope: !1569)
!1576 = !DILocation(line: 233, column: 9, scope: !1569)
!1577 = !DILocation(line: 233, column: 26, scope: !1569)
!1578 = !DILocation(line: 233, column: 43, scope: !1569)
!1579 = !DILocation(line: 233, column: 29, scope: !1569)
!1580 = !DILocation(line: 233, column: 2, scope: !1569)
!1581 = distinct !DISubprogram(name: "buffer_copy_buffer", scope: !102, file: !102, line: 297, type: !1582, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1585)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1542, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!1585 = !{!1586, !1587}
!1586 = !DILocalVariable(name: "b", arg: 1, scope: !1581, file: !102, line: 297, type: !1542)
!1587 = !DILocalVariable(name: "src", arg: 2, scope: !1581, file: !102, line: 297, type: !1584)
!1588 = !DILocation(line: 297, column: 57, scope: !1581)
!1589 = !DILocation(line: 297, column: 84, scope: !1581)
!1590 = !DILocation(line: 298, column: 28, scope: !1581)
!1591 = !DILocation(line: 298, column: 31, scope: !1581)
!1592 = !DILocation(line: 298, column: 5, scope: !1581)
!1593 = !DILocation(line: 299, column: 1, scope: !1581)
!1594 = !DISubprogram(name: "buffer_append_path_len", scope: !102, file: !102, line: 245, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = distinct !DISubprogram(name: "buffer_append_slash", scope: !102, file: !102, line: 329, type: !1596, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1598)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !137}
!1598 = !{!1599, !1600}
!1599 = !DILocalVariable(name: "b", arg: 1, scope: !1595, file: !102, line: 329, type: !137)
!1600 = !DILocalVariable(name: "len", scope: !1595, file: !102, line: 330, type: !1601)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!1602 = !DILocation(line: 329, column: 48, scope: !1595)
!1603 = !DILocation(line: 330, column: 5, scope: !1595)
!1604 = !DILocation(line: 330, column: 20, scope: !1595)
!1605 = !DILocation(line: 330, column: 38, scope: !1595)
!1606 = !DILocation(line: 330, column: 26, scope: !1595)
!1607 = !DILocation(line: 331, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1595, file: !102, line: 331, column: 9)
!1609 = !DILocation(line: 331, column: 13, scope: !1608)
!1610 = !DILocation(line: 331, column: 17, scope: !1608)
!1611 = !DILocation(line: 331, column: 27, scope: !1608)
!1612 = !DILocation(line: 331, column: 30, scope: !1608)
!1613 = !DILocation(line: 331, column: 34, scope: !1608)
!1614 = !DILocation(line: 331, column: 37, scope: !1608)
!1615 = !DILocation(line: 331, column: 24, scope: !1608)
!1616 = !DILocation(line: 331, column: 9, scope: !1595)
!1617 = !DILocation(line: 332, column: 28, scope: !1608)
!1618 = !DILocation(line: 332, column: 9, scope: !1608)
!1619 = !DILocation(line: 333, column: 1, scope: !1595)
!1620 = !DISubprogram(name: "buffer_append_string", scope: !102, file: !102, line: 106, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1542, !1543}
!1623 = distinct !DISubprogram(name: "light_isdigit", scope: !102, file: !102, line: 214, type: !1570, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1624)
!1624 = !{!1625}
!1625 = !DILocalVariable(name: "c", arg: 1, scope: !1623, file: !102, line: 214, type: !45)
!1626 = !DILocation(line: 214, column: 37, scope: !1623)
!1627 = !DILocation(line: 215, column: 20, scope: !1623)
!1628 = !DILocation(line: 215, column: 21, scope: !1623)
!1629 = !DILocation(line: 215, column: 26, scope: !1623)
!1630 = !DILocation(line: 215, column: 2, scope: !1623)
!1631 = distinct !DISubprogram(name: "light_isalpha", scope: !102, file: !102, line: 226, type: !1570, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1632)
!1632 = !{!1633}
!1633 = !DILocalVariable(name: "c", arg: 1, scope: !1631, file: !102, line: 226, type: !45)
!1634 = !DILocation(line: 226, column: 37, scope: !1631)
!1635 = !DILocation(line: 227, column: 21, scope: !1631)
!1636 = !DILocation(line: 227, column: 23, scope: !1631)
!1637 = !DILocation(line: 227, column: 30, scope: !1631)
!1638 = !DILocation(line: 227, column: 35, scope: !1631)
!1639 = !DILocation(line: 227, column: 2, scope: !1631)
!1640 = distinct !DISubprogram(name: "buffer_append_char", scope: !102, file: !102, line: 322, type: !1641, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !137, !4}
!1643 = !{!1644, !1645}
!1644 = !DILocalVariable(name: "b", arg: 1, scope: !1640, file: !102, line: 322, type: !137)
!1645 = !DILocalVariable(name: "c", arg: 2, scope: !1640, file: !102, line: 322, type: !4)
!1646 = !DILocation(line: 322, column: 48, scope: !1640)
!1647 = !DILocation(line: 322, column: 56, scope: !1640)
!1648 = !DILocation(line: 323, column: 30, scope: !1640)
!1649 = !DILocation(line: 323, column: 21, scope: !1640)
!1650 = !DILocation(line: 323, column: 7, scope: !1640)
!1651 = !DILocation(line: 323, column: 28, scope: !1640)
!1652 = !DILocation(line: 324, column: 1, scope: !1640)
!1653 = !DISubprogram(name: "buffer_extend", scope: !102, file: !102, line: 67, type: !1654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!106, !1656, !183}
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1657 = !DISubprogram(name: "config_plugin_values_init", scope: !167, file: !167, line: 146, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!45, !22, !25, !1660, !114}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!1661 = distinct !DISubprogram(name: "buffer_is_blank", scope: !102, file: !102, line: 275, type: !1564, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !1662)
!1662 = !{!1663}
!1663 = !DILocalVariable(name: "b", arg: 1, scope: !1661, file: !102, line: 275, type: !291)
!1664 = !DILocation(line: 275, column: 49, scope: !1661)
!1665 = !DILocation(line: 276, column: 12, scope: !1661)
!1666 = !DILocation(line: 276, column: 15, scope: !1661)
!1667 = !DILocation(line: 276, column: 20, scope: !1661)
!1668 = !DILocation(line: 276, column: 5, scope: !1661)
