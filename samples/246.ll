; ModuleID = 'samples/246.bc'
source_filename = "dwarf/Lfind_proc_info-lsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf_eh_frame_hdr = type <{ i8, i8, i8, i8, i64 }>
%struct.dwarf_callback_data = type { i64, ptr, i32, i32, %struct.unw_dyn_info, %struct.unw_dyn_info }
%struct.unw_dyn_info = type { ptr, ptr, i64, i64, i64, i32, i32, i64, %union.anon }
%union.anon = type { %struct.unw_dyn_proc_info }
%struct.unw_dyn_proc_info = type { i64, i64, i32, i32, ptr }
%struct.dl_phdr_info = type { i64, ptr, ptr, i16, i64, i64, i64, ptr }
%struct.Elf64_Phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.Elf64_Dyn = type { i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.unw_proc_info = type { i64, i64, i64, i64, i64, i64, i32, i32, ptr, %struct.unw_tdep_proc_info_t }
%struct.unw_tdep_proc_info_t = type { i8 }
%struct.unw_dyn_remote_table_info = type { i64, i64, i64, i64 }
%struct.elf_image = type { ptr, i64 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.__sigset_t = type { [16 x i64] }
%struct.unw_dyn_table_info = type { i64, i64, i64, ptr }
%struct.unw_debug_frame_list = type { i64, i64, i64, ptr, i64, ptr, i64, ptr }
%struct.table_entry = type { i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@_ULx86_64_local_addr_space = external global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1

; Function Attrs: noinline optnone uwtable
define hidden i32 @_ULx86_64_dwarf_callback(ptr noundef %info, i64 noundef %size, ptr noundef %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  %cb_data = alloca ptr, align 8
  %di = alloca ptr, align 8
  %phdr = alloca ptr, align 8
  %p_eh_hdr = alloca ptr, align 8
  %p_dynamic = alloca ptr, align 8
  %p_text = alloca ptr, align 8
  %addr = alloca i64, align 8
  %eh_frame_start = alloca i64, align 8
  %eh_frame_end = alloca i64, align 8
  %fde_count = alloca i64, align 8
  %ip = alloca i64, align 8
  %load_base = alloca i64, align 8
  %max_load_addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %need_unwind_info = alloca i32, align 4
  %pi = alloca ptr, align 8
  %hdr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %n = alloca i64, align 8
  %found = alloca i32, align 4
  %synth_eh_frame_hdr = alloca %struct.dwarf_eh_frame_hdr, align 1
  %vaddr = alloca i64, align 8
  %eh_frame = alloca i64, align 8
  %dyn = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  store i64 %size, ptr %size.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  store ptr %0, ptr %cb_data, align 8
  %1 = load ptr, ptr %cb_data, align 8
  %di1 = getelementptr inbounds %struct.dwarf_callback_data, ptr %1, i32 0, i32 4
  store ptr %di1, ptr %di, align 8
  store i64 0, ptr %max_load_addr, align 8
  %2 = load ptr, ptr %cb_data, align 8
  %need_unwind_info2 = getelementptr inbounds %struct.dwarf_callback_data, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %need_unwind_info2, align 8
  store i32 %3, ptr %need_unwind_info, align 4
  %4 = load ptr, ptr %cb_data, align 8
  %pi3 = getelementptr inbounds %struct.dwarf_callback_data, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pi3, align 8
  store ptr %5, ptr %pi, align 8
  store ptr null, ptr %hdr, align 8
  store i32 0, ptr %found, align 4
  %6 = load ptr, ptr %cb_data, align 8
  %ip4 = getelementptr inbounds %struct.dwarf_callback_data, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %ip4, align 8
  store i64 %7, ptr %ip, align 8
  %8 = load i64, ptr %size.addr, align 8
  %cmp = icmp ult i64 %8, 26
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %info.addr, align 8
  %dlpi_phdr = getelementptr inbounds %struct.dl_phdr_info, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %dlpi_phdr, align 8
  store ptr %10, ptr %phdr, align 8
  %11 = load ptr, ptr %info.addr, align 8
  %dlpi_addr = getelementptr inbounds %struct.dl_phdr_info, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %dlpi_addr, align 8
  store i64 %12, ptr %load_base, align 8
  store ptr null, ptr %p_text, align 8
  store ptr null, ptr %p_eh_hdr, align 8
  store ptr null, ptr %p_dynamic, align 8
  %13 = load ptr, ptr %info.addr, align 8
  %dlpi_phnum = getelementptr inbounds %struct.dl_phdr_info, ptr %13, i32 0, i32 3
  %14 = load i16, ptr %dlpi_phnum, align 8
  %conv = zext i16 %14 to i64
  store i64 %conv, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i64, ptr %n, align 8
  %dec = add nsw i64 %15, -1
  store i64 %dec, ptr %n, align 8
  %cmp5 = icmp sge i64 %dec, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %phdr, align 8
  %p_type = getelementptr inbounds %struct.Elf64_Phdr, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %p_type, align 8
  %cmp7 = icmp eq i32 %17, 1
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %18 = load ptr, ptr %phdr, align 8
  %p_vaddr = getelementptr inbounds %struct.Elf64_Phdr, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %p_vaddr, align 8
  %20 = load i64, ptr %load_base, align 8
  %add = add i64 %19, %20
  store i64 %add, ptr %vaddr, align 8
  %21 = load i64, ptr %ip, align 8
  %22 = load i64, ptr %vaddr, align 8
  %cmp10 = icmp uge i64 %21, %22
  br i1 %cmp10, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.then9
  %23 = load i64, ptr %ip, align 8
  %24 = load i64, ptr %vaddr, align 8
  %25 = load ptr, ptr %phdr, align 8
  %p_memsz = getelementptr inbounds %struct.Elf64_Phdr, ptr %25, i32 0, i32 6
  %26 = load i64, ptr %p_memsz, align 8
  %add12 = add i64 %24, %26
  %cmp13 = icmp ult i64 %23, %add12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %phdr, align 8
  store ptr %27, ptr %p_text, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.then9
  %28 = load i64, ptr %vaddr, align 8
  %29 = load ptr, ptr %phdr, align 8
  %p_filesz = getelementptr inbounds %struct.Elf64_Phdr, ptr %29, i32 0, i32 5
  %30 = load i64, ptr %p_filesz, align 8
  %add17 = add i64 %28, %30
  %31 = load i64, ptr %max_load_addr, align 8
  %cmp18 = icmp ugt i64 %add17, %31
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  %32 = load i64, ptr %vaddr, align 8
  %33 = load ptr, ptr %phdr, align 8
  %p_filesz21 = getelementptr inbounds %struct.Elf64_Phdr, ptr %33, i32 0, i32 5
  %34 = load i64, ptr %p_filesz21, align 8
  %add22 = add i64 %32, %34
  store i64 %add22, ptr %max_load_addr, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16
  br label %if.end35

if.else:                                          ; preds = %for.body
  %35 = load ptr, ptr %phdr, align 8
  %p_type24 = getelementptr inbounds %struct.Elf64_Phdr, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %p_type24, align 8
  %cmp25 = icmp eq i32 %36, 1685382480
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else
  %37 = load ptr, ptr %phdr, align 8
  store ptr %37, ptr %p_eh_hdr, align 8
  br label %if.end34

if.else28:                                        ; preds = %if.else
  %38 = load ptr, ptr %phdr, align 8
  %p_type29 = getelementptr inbounds %struct.Elf64_Phdr, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %p_type29, align 8
  %cmp30 = icmp eq i32 %39, 2
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.else28
  %40 = load ptr, ptr %phdr, align 8
  store ptr %40, ptr %p_dynamic, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.else28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end23
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %41 = load ptr, ptr %phdr, align 8
  %incdec.ptr = getelementptr inbounds %struct.Elf64_Phdr, ptr %41, i32 1
  store ptr %incdec.ptr, ptr %phdr, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %42 = load ptr, ptr %p_text, align 8
  %tobool = icmp ne ptr %42, null
  br i1 %tobool, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %for.end
  %43 = load ptr, ptr %p_eh_hdr, align 8
  %tobool38 = icmp ne ptr %43, null
  br i1 %tobool38, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.end37
  %44 = load ptr, ptr %p_eh_hdr, align 8
  %p_vaddr40 = getelementptr inbounds %struct.Elf64_Phdr, ptr %44, i32 0, i32 3
  %45 = load i64, ptr %p_vaddr40, align 8
  %46 = load i64, ptr %load_base, align 8
  %add41 = add i64 %45, %46
  %47 = inttoptr i64 %add41 to ptr
  store ptr %47, ptr %hdr, align 8
  br label %if.end47

if.else42:                                        ; preds = %if.end37
  %48 = load ptr, ptr %info.addr, align 8
  %call = call i64 @dwarf_find_eh_frame_section(ptr noundef %48)
  store i64 %call, ptr %eh_frame, align 8
  %49 = load i64, ptr %eh_frame, align 8
  %tobool43 = icmp ne i64 %49, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.else42
  %version = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %synth_eh_frame_hdr, i32 0, i32 0
  store i8 1, ptr %version, align 1
  %eh_frame_ptr_enc = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %synth_eh_frame_hdr, i32 0, i32 1
  store i8 4, ptr %eh_frame_ptr_enc, align 1
  %fde_count_enc = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %synth_eh_frame_hdr, i32 0, i32 2
  store i8 -1, ptr %fde_count_enc, align 1
  %table_enc = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %synth_eh_frame_hdr, i32 0, i32 3
  store i8 -1, ptr %table_enc, align 1
  %50 = load i64, ptr %eh_frame, align 8
  %eh_frame45 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %synth_eh_frame_hdr, i32 0, i32 4
  store i64 %50, ptr %eh_frame45, align 1
  store ptr %synth_eh_frame_hdr, ptr %hdr, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.else42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then39
  %51 = load ptr, ptr %hdr, align 8
  %tobool48 = icmp ne ptr %51, null
  br i1 %tobool48, label %if.then49, label %if.end132

if.then49:                                        ; preds = %if.end47
  %52 = load ptr, ptr %p_dynamic, align 8
  %tobool50 = icmp ne ptr %52, null
  br i1 %tobool50, label %if.then51, label %if.else66

if.then51:                                        ; preds = %if.then49
  %53 = load ptr, ptr %p_dynamic, align 8
  %p_vaddr52 = getelementptr inbounds %struct.Elf64_Phdr, ptr %53, i32 0, i32 3
  %54 = load i64, ptr %p_vaddr52, align 8
  %55 = load i64, ptr %load_base, align 8
  %add53 = add i64 %54, %55
  %56 = inttoptr i64 %add53 to ptr
  store ptr %56, ptr %dyn, align 8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc63, %if.then51
  %57 = load ptr, ptr %dyn, align 8
  %d_tag = getelementptr inbounds %struct.Elf64_Dyn, ptr %57, i32 0, i32 0
  %58 = load i64, ptr %d_tag, align 8
  %cmp55 = icmp ne i64 %58, 0
  br i1 %cmp55, label %for.body57, label %for.end65

for.body57:                                       ; preds = %for.cond54
  %59 = load ptr, ptr %dyn, align 8
  %d_tag58 = getelementptr inbounds %struct.Elf64_Dyn, ptr %59, i32 0, i32 0
  %60 = load i64, ptr %d_tag58, align 8
  %cmp59 = icmp eq i64 %60, 3
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %for.body57
  %61 = load ptr, ptr %dyn, align 8
  %d_un = getelementptr inbounds %struct.Elf64_Dyn, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %d_un, align 8
  %63 = load ptr, ptr %di, align 8
  %gp = getelementptr inbounds %struct.unw_dyn_info, ptr %63, i32 0, i32 4
  store i64 %62, ptr %gp, align 8
  br label %for.end65

if.end62:                                         ; preds = %for.body57
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %64 = load ptr, ptr %dyn, align 8
  %incdec.ptr64 = getelementptr inbounds %struct.Elf64_Dyn, ptr %64, i32 1
  store ptr %incdec.ptr64, ptr %dyn, align 8
  br label %for.cond54, !llvm.loop !7

for.end65:                                        ; preds = %if.then61, %for.cond54
  br label %if.end68

if.else66:                                        ; preds = %if.then49
  %65 = load ptr, ptr %di, align 8
  %gp67 = getelementptr inbounds %struct.unw_dyn_info, ptr %65, i32 0, i32 4
  store i64 0, ptr %gp67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %for.end65
  %66 = load ptr, ptr %di, align 8
  %gp69 = getelementptr inbounds %struct.unw_dyn_info, ptr %66, i32 0, i32 4
  %67 = load i64, ptr %gp69, align 8
  %68 = load ptr, ptr %pi, align 8
  %gp70 = getelementptr inbounds %struct.unw_proc_info, ptr %68, i32 0, i32 4
  store i64 %67, ptr %gp70, align 8
  %69 = load ptr, ptr %hdr, align 8
  %version71 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %69, i32 0, i32 0
  %70 = load i8, ptr %version71, align 1
  %conv72 = zext i8 %70 to i32
  %cmp73 = icmp ne i32 %conv72, 1
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end68
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end68
  %71 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  %call77 = call ptr @_Ux86_64_get_accessors_int(ptr noundef %71)
  store ptr %call77, ptr %a, align 8
  %72 = load ptr, ptr %hdr, align 8
  %eh_frame78 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %eh_frame78 to i64
  store i64 %73, ptr %addr, align 8
  %74 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  %75 = load ptr, ptr %a, align 8
  %76 = load ptr, ptr %hdr, align 8
  %eh_frame_ptr_enc79 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %76, i32 0, i32 1
  %77 = load i8, ptr %eh_frame_ptr_enc79, align 1
  %78 = load ptr, ptr %pi, align 8
  %call80 = call i32 @_ULx86_64_dwarf_read_encoded_pointer(ptr noundef %74, ptr noundef %75, ptr noundef %addr, i8 noundef zeroext %77, ptr noundef %78, ptr noundef %eh_frame_start, ptr noundef null)
  store i32 %call80, ptr %ret, align 4
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end76
  %79 = load i32, ptr %ret, align 4
  store i32 %79, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.end76
  %80 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  %81 = load ptr, ptr %a, align 8
  %82 = load ptr, ptr %hdr, align 8
  %fde_count_enc85 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %82, i32 0, i32 2
  %83 = load i8, ptr %fde_count_enc85, align 1
  %84 = load ptr, ptr %pi, align 8
  %call86 = call i32 @_ULx86_64_dwarf_read_encoded_pointer(ptr noundef %80, ptr noundef %81, ptr noundef %addr, i8 noundef zeroext %83, ptr noundef %84, ptr noundef %fde_count, ptr noundef null)
  store i32 %call86, ptr %ret, align 4
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end84
  %85 = load i32, ptr %ret, align 4
  store i32 %85, ptr %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.end84
  %86 = load ptr, ptr %hdr, align 8
  %table_enc91 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %86, i32 0, i32 3
  %87 = load i8, ptr %table_enc91, align 1
  %conv92 = zext i8 %87 to i32
  %cmp93 = icmp ne i32 %conv92, 59
  br i1 %cmp93, label %if.then95, label %if.else121

if.then95:                                        ; preds = %if.end90
  %88 = load ptr, ptr %hdr, align 8
  %table_enc96 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %88, i32 0, i32 3
  %89 = load i8, ptr %table_enc96, align 1
  %conv97 = zext i8 %89 to i32
  %cmp98 = icmp eq i32 %conv97, 255
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.then95
  br label %if.end102

if.else101:                                       ; preds = %if.then95
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.then100
  %90 = load i64, ptr %max_load_addr, align 8
  store i64 %90, ptr %eh_frame_end, align 8
  %91 = load ptr, ptr %hdr, align 8
  %fde_count_enc103 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %91, i32 0, i32 2
  %92 = load i8, ptr %fde_count_enc103, align 1
  %conv104 = zext i8 %92 to i32
  %cmp105 = icmp eq i32 %conv104, 255
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end102
  store i64 -1, ptr %fde_count, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end102
  %93 = load ptr, ptr %hdr, align 8
  %eh_frame_ptr_enc109 = getelementptr inbounds %struct.dwarf_eh_frame_hdr, ptr %93, i32 0, i32 1
  %94 = load i8, ptr %eh_frame_ptr_enc109, align 1
  %conv110 = zext i8 %94 to i32
  %cmp111 = icmp eq i32 %conv110, 255
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end108
  call void @abort() #7
  unreachable

if.end114:                                        ; preds = %if.end108
  %95 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  %96 = load i64, ptr %ip, align 8
  %97 = load i64, ptr %eh_frame_start, align 8
  %98 = load i64, ptr %eh_frame_end, align 8
  %99 = load i64, ptr %fde_count, align 8
  %100 = load ptr, ptr %pi, align 8
  %101 = load i32, ptr %need_unwind_info, align 4
  %call115 = call i32 @linear_search(ptr noundef %95, i64 noundef %96, i64 noundef %97, i64 noundef %98, i64 noundef %99, ptr noundef %100, i32 noundef %101, ptr noundef null)
  store i32 %call115, ptr %found, align 4
  %102 = load i32, ptr %found, align 4
  %cmp116 = icmp ne i32 %102, 1
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %if.end114
  store i32 0, ptr %found, align 4
  br label %if.end120

if.else119:                                       ; preds = %if.end114
  %103 = load ptr, ptr %cb_data, align 8
  %single_fde = getelementptr inbounds %struct.dwarf_callback_data, ptr %103, i32 0, i32 3
  store i32 1, ptr %single_fde, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.else119, %if.then118
  br label %if.end131

if.else121:                                       ; preds = %if.end90
  %104 = load ptr, ptr %di, align 8
  %format = getelementptr inbounds %struct.unw_dyn_info, ptr %104, i32 0, i32 5
  store i32 2, ptr %format, align 8
  %105 = load ptr, ptr %p_text, align 8
  %p_vaddr122 = getelementptr inbounds %struct.Elf64_Phdr, ptr %105, i32 0, i32 3
  %106 = load i64, ptr %p_vaddr122, align 8
  %107 = load i64, ptr %load_base, align 8
  %add123 = add i64 %106, %107
  %108 = load ptr, ptr %di, align 8
  %start_ip = getelementptr inbounds %struct.unw_dyn_info, ptr %108, i32 0, i32 2
  store i64 %add123, ptr %start_ip, align 8
  %109 = load ptr, ptr %p_text, align 8
  %p_vaddr124 = getelementptr inbounds %struct.Elf64_Phdr, ptr %109, i32 0, i32 3
  %110 = load i64, ptr %p_vaddr124, align 8
  %111 = load i64, ptr %load_base, align 8
  %add125 = add i64 %110, %111
  %112 = load ptr, ptr %p_text, align 8
  %p_memsz126 = getelementptr inbounds %struct.Elf64_Phdr, ptr %112, i32 0, i32 6
  %113 = load i64, ptr %p_memsz126, align 8
  %add127 = add i64 %add125, %113
  %114 = load ptr, ptr %di, align 8
  %end_ip = getelementptr inbounds %struct.unw_dyn_info, ptr %114, i32 0, i32 3
  store i64 %add127, ptr %end_ip, align 8
  %115 = load ptr, ptr %info.addr, align 8
  %dlpi_name = getelementptr inbounds %struct.dl_phdr_info, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %dlpi_name, align 8
  %117 = ptrtoint ptr %116 to i64
  %118 = load ptr, ptr %di, align 8
  %u = getelementptr inbounds %struct.unw_dyn_info, ptr %118, i32 0, i32 8
  %name_ptr = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u, i32 0, i32 0
  store i64 %117, ptr %name_ptr, align 8
  %119 = load i64, ptr %addr, align 8
  %120 = load ptr, ptr %di, align 8
  %u128 = getelementptr inbounds %struct.unw_dyn_info, ptr %120, i32 0, i32 8
  %table_data = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u128, i32 0, i32 3
  store i64 %119, ptr %table_data, align 8
  %121 = load i64, ptr %fde_count, align 8
  %mul = mul i64 %121, 8
  %div = udiv i64 %mul, 8
  %122 = load ptr, ptr %di, align 8
  %u129 = getelementptr inbounds %struct.unw_dyn_info, ptr %122, i32 0, i32 8
  %table_len = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u129, i32 0, i32 2
  store i64 %div, ptr %table_len, align 8
  %123 = load ptr, ptr %hdr, align 8
  %124 = ptrtoint ptr %123 to i64
  %125 = load ptr, ptr %di, align 8
  %u130 = getelementptr inbounds %struct.unw_dyn_info, ptr %125, i32 0, i32 8
  %segbase = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u130, i32 0, i32 1
  store i64 %124, ptr %segbase, align 8
  store i32 1, ptr %found, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else121, %if.end120
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end47
  %126 = load i32, ptr %found, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end132, %if.then89, %if.then83, %if.then75, %if.then36, %if.then
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: noinline optnone uwtable
define internal i64 @dwarf_find_eh_frame_section(ptr noundef %info) #0 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ei = alloca %struct.elf_image, align 8
  %eh_frame = alloca i64, align 8
  %shdr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %exepath = alloca [4096 x i8], align 16
  store ptr %info, ptr %info.addr, align 8
  store i64 0, ptr %eh_frame, align 8
  %0 = load ptr, ptr %info.addr, align 8
  %dlpi_name = getelementptr inbounds %struct.dl_phdr_info, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %dlpi_name, align 8
  store ptr %1, ptr %file, align 8
  %2 = load ptr, ptr %file, align 8
  %call = call i64 @strlen(ptr noundef %2) #8
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %exepath, i64 0, i64 0
  call void @_Ux86_64_get_exe_image_path(ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [4096 x i8], ptr %exepath, i64 0, i64 0
  store ptr %arraydecay1, ptr %file, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %file, align 8
  %call2 = call i32 @elf_map_image(ptr noundef %ei, ptr noundef %3)
  store i32 %call2, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @_Uelf64_find_section(ptr noundef %ei, ptr noundef @.str)
  store ptr %call6, ptr %shdr, align 8
  %5 = load ptr, ptr %shdr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  br label %out

if.end8:                                          ; preds = %if.end5
  %6 = load ptr, ptr %shdr, align 8
  %sh_addr = getelementptr inbounds %struct.Elf64_Shdr, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %sh_addr, align 8
  %8 = load ptr, ptr %info.addr, align 8
  %dlpi_addr = getelementptr inbounds %struct.dl_phdr_info, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %dlpi_addr, align 8
  %add = add i64 %7, %9
  store i64 %add, ptr %eh_frame, align 8
  br label %out

out:                                              ; preds = %if.end8, %if.then7
  %image = getelementptr inbounds %struct.elf_image, ptr %ei, i32 0, i32 0
  %10 = load ptr, ptr %image, align 8
  %size = getelementptr inbounds %struct.elf_image, ptr %ei, i32 0, i32 1
  %11 = load i64, ptr %size, align 8
  %call9 = call i32 @munmap(ptr noundef %10, i64 noundef %11) #9
  %12 = load i64, ptr %eh_frame, align 8
  store i64 %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %out, %if.then4
  %13 = load i64, ptr %retval, align 8
  ret i64 %13
}

declare ptr @_Ux86_64_get_accessors_int(ptr noundef) #1

declare i32 @_ULx86_64_dwarf_read_encoded_pointer(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline optnone uwtable
define internal i32 @linear_search(ptr noundef %as, i64 noundef %ip, i64 noundef %eh_frame_start, i64 noundef %eh_frame_end, i64 noundef %fde_count, ptr noundef %pi, i32 noundef %need_unwind_info, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %eh_frame_start.addr = alloca i64, align 8
  %eh_frame_end.addr = alloca i64, align 8
  %fde_count.addr = alloca i64, align 8
  %pi.addr = alloca ptr, align 8
  %need_unwind_info.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %i = alloca i64, align 8
  %fde_addr = alloca i64, align 8
  %addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %as, ptr %as.addr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  store i64 %eh_frame_start, ptr %eh_frame_start.addr, align 8
  store i64 %eh_frame_end, ptr %eh_frame_end.addr, align 8
  store i64 %fde_count, ptr %fde_count.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  store i32 %need_unwind_info, ptr %need_unwind_info.addr, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  %call = call ptr @_Ux86_64_get_accessors_int(ptr noundef %0)
  store ptr %call, ptr %a, align 8
  store i64 0, ptr %i, align 8
  %1 = load i64, ptr %eh_frame_start.addr, align 8
  store i64 %1, ptr %addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %2 = load i64, ptr %i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %i, align 8
  %3 = load i64, ptr %fde_count.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i64, ptr %addr, align 8
  %5 = load i64, ptr %eh_frame_end.addr, align 8
  %cmp1 = icmp ult i64 %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i64, ptr %addr, align 8
  store i64 %7, ptr %fde_addr, align 8
  %8 = load ptr, ptr %as.addr, align 8
  %9 = load ptr, ptr %a, align 8
  %10 = load ptr, ptr %pi.addr, align 8
  %11 = load i64, ptr %eh_frame_start.addr, align 8
  %12 = load ptr, ptr %arg.addr, align 8
  %call2 = call i32 @_ULx86_64_dwarf_extract_proc_info_from_fde(ptr noundef %8, ptr noundef %9, ptr noundef %addr, ptr noundef %10, i64 noundef %11, i32 noundef 0, i32 noundef 0, ptr noundef %12)
  store i32 %call2, ptr %ret, align 4
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i32, ptr %ret, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %14 = load i64, ptr %ip.addr, align 8
  %15 = load ptr, ptr %pi.addr, align 8
  %start_ip = getelementptr inbounds %struct.unw_proc_info, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %start_ip, align 8
  %cmp4 = icmp uge i64 %14, %16
  br i1 %cmp4, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %17 = load i64, ptr %ip.addr, align 8
  %18 = load ptr, ptr %pi.addr, align 8
  %end_ip = getelementptr inbounds %struct.unw_proc_info, ptr %18, i32 0, i32 1
  %19 = load i64, ptr %end_ip, align 8
  %cmp5 = icmp ult i64 %17, %19
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %land.lhs.true
  %20 = load i32, ptr %need_unwind_info.addr, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then6
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then6
  %21 = load i64, ptr %fde_addr, align 8
  store i64 %21, ptr %addr, align 8
  %22 = load ptr, ptr %as.addr, align 8
  %23 = load ptr, ptr %a, align 8
  %24 = load ptr, ptr %pi.addr, align 8
  %25 = load i64, ptr %eh_frame_start.addr, align 8
  %26 = load i32, ptr %need_unwind_info.addr, align 4
  %27 = load ptr, ptr %arg.addr, align 8
  %call9 = call i32 @_ULx86_64_dwarf_extract_proc_info_from_fde(ptr noundef %22, ptr noundef %23, ptr noundef %addr, ptr noundef %24, i64 noundef %25, i32 noundef %26, i32 noundef 0, ptr noundef %27)
  store i32 %call9, ptr %ret, align 4
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %28 = load i32, ptr %ret, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  store i32 -10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end12, %if.then11, %if.then7, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline optnone uwtable
define hidden i32 @_ULx86_64_dwarf_find_proc_info(ptr noundef %as, i64 noundef %ip, ptr noundef %pi, i32 noundef %need_unwind_info, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %pi.addr = alloca ptr, align 8
  %need_unwind_info.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %cb_data = alloca %struct.dwarf_callback_data, align 8
  %saved_mask = alloca %struct.__sigset_t, align 8
  %ret = alloca i32, align 4
  store ptr %as, ptr %as.addr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  store i32 %need_unwind_info, ptr %need_unwind_info.addr, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %cb_data, i8 0, i64 200, i1 false)
  %0 = load i64, ptr %ip.addr, align 8
  %ip1 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 0
  store i64 %0, ptr %ip1, align 8
  %1 = load ptr, ptr %pi.addr, align 8
  %pi2 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 1
  store ptr %1, ptr %pi2, align 8
  %2 = load i32, ptr %need_unwind_info.addr, align 4
  %need_unwind_info3 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 2
  store i32 %2, ptr %need_unwind_info3, align 8
  %di = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 4
  %format = getelementptr inbounds %struct.unw_dyn_info, ptr %di, i32 0, i32 5
  store i32 -1, ptr %format, align 8
  %di_debug = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 5
  %format4 = getelementptr inbounds %struct.unw_dyn_info, ptr %di_debug, i32 0, i32 5
  store i32 -1, ptr %format4, align 8
  call void @mark_as_used(ptr noundef %saved_mask)
  %call = call i32 @dl_iterate_phdr(ptr noundef @_ULx86_64_dwarf_callback, ptr noundef %cb_data)
  store i32 %call, ptr %ret, align 4
  call void @mark_as_used(ptr noundef null)
  %3 = load i32, ptr %ret, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  %single_fde = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 3
  %4 = load i32, ptr %single_fde, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %di6 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 4
  %format7 = getelementptr inbounds %struct.unw_dyn_info, ptr %di6, i32 0, i32 5
  %5 = load i32, ptr %format7, align 8
  %cmp8 = icmp ne i32 %5, -1
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %6 = load ptr, ptr %as.addr, align 8
  %7 = load i64, ptr %ip.addr, align 8
  %di10 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 4
  %8 = load ptr, ptr %pi.addr, align 8
  %9 = load i32, ptr %need_unwind_info.addr, align 4
  %10 = load ptr, ptr %arg.addr, align 8
  %call11 = call i32 @_ULx86_64_dwarf_search_unwind_table(ptr noundef %6, i64 noundef %7, ptr noundef %di10, ptr noundef %8, i32 noundef %9, ptr noundef %10)
  store i32 %call11, ptr %ret, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  store i32 -10, ptr %ret, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %11 = load i32, ptr %ret, align 4
  %cmp13 = icmp eq i32 %11, -10
  br i1 %cmp13, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %di_debug14 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 5
  %format15 = getelementptr inbounds %struct.unw_dyn_info, ptr %di_debug14, i32 0, i32 5
  %12 = load i32, ptr %format15, align 8
  %cmp16 = icmp ne i32 %12, -1
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %as.addr, align 8
  %14 = load i64, ptr %ip.addr, align 8
  %di_debug18 = getelementptr inbounds %struct.dwarf_callback_data, ptr %cb_data, i32 0, i32 5
  %15 = load ptr, ptr %pi.addr, align 8
  %16 = load i32, ptr %need_unwind_info.addr, align 4
  %17 = load ptr, ptr %arg.addr, align 8
  %call19 = call i32 @_ULx86_64_dwarf_search_unwind_table(ptr noundef %13, i64 noundef %14, ptr noundef %di_debug18, ptr noundef %15, i32 noundef %16, ptr noundef %17)
  store i32 %call19, ptr %ret, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true, %if.end12
  br label %if.end22

if.else21:                                        ; preds = %entry
  store i32 -10, ptr %ret, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.end20
  %18 = load i32, ptr %ret, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then5
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_as_used(ptr noundef %v) #4 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  ret void
}

declare i32 @dl_iterate_phdr(ptr noundef, ptr noundef) #1

; Function Attrs: noinline optnone uwtable
define i32 @_ULx86_64_dwarf_search_unwind_table(ptr noundef %as, i64 noundef %ip, ptr noundef %di, ptr noundef %pi, i32 noundef %need_unwind_info, ptr noundef %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %as.addr = alloca ptr, align 8
  %ip.addr = alloca i64, align 8
  %di.addr = alloca ptr, align 8
  %pi.addr = alloca ptr, align 8
  %need_unwind_info.addr = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  %table = alloca ptr, align 8
  %ip_base = alloca i64, align 8
  %segbase = alloca i64, align 8
  %last_ip = alloca i64, align 8
  %fde_addr = alloca i64, align 8
  %a = alloca ptr, align 8
  %ret = alloca i32, align 4
  %debug_frame_base = alloca i64, align 8
  %table_len = alloca i64, align 8
  %fdesc = alloca ptr, align 8
  store ptr %as, ptr %as.addr, align 8
  store i64 %ip, ptr %ip.addr, align 8
  store ptr %di, ptr %di.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  store i32 %need_unwind_info, ptr %need_unwind_info.addr, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store ptr null, ptr %e, align 8
  store i64 0, ptr %ip_base, align 8
  store i64 0, ptr %segbase, align 8
  %0 = load ptr, ptr %di.addr, align 8
  %format = getelementptr inbounds %struct.unw_dyn_info, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %format, align 8
  %call = call i32 @is_remote_table(i32 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %di.addr, align 8
  %u = getelementptr inbounds %struct.unw_dyn_info, ptr %2, i32 0, i32 8
  %table_data = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u, i32 0, i32 3
  %3 = load i64, ptr %table_data, align 8
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %table, align 8
  %5 = load ptr, ptr %di.addr, align 8
  %u1 = getelementptr inbounds %struct.unw_dyn_info, ptr %5, i32 0, i32 8
  %table_len2 = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u1, i32 0, i32 2
  %6 = load i64, ptr %table_len2, align 8
  %mul = mul i64 %6, 8
  store i64 %mul, ptr %table_len, align 8
  store i64 0, ptr %debug_frame_base, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %di.addr, align 8
  %u3 = getelementptr inbounds %struct.unw_dyn_info, ptr %7, i32 0, i32 8
  %table_data4 = getelementptr inbounds %struct.unw_dyn_table_info, ptr %u3, i32 0, i32 3
  %8 = load ptr, ptr %table_data4, align 8
  store ptr %8, ptr %fdesc, align 8
  %9 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  store ptr %9, ptr %as.addr, align 8
  %10 = load ptr, ptr %fdesc, align 8
  %index = getelementptr inbounds %struct.unw_debug_frame_list, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %index, align 8
  store ptr %11, ptr %table, align 8
  %12 = load ptr, ptr %fdesc, align 8
  %index_size = getelementptr inbounds %struct.unw_debug_frame_list, ptr %12, i32 0, i32 6
  %13 = load i64, ptr %index_size, align 8
  store i64 %13, ptr %table_len, align 8
  %14 = load ptr, ptr %fdesc, align 8
  %debug_frame = getelementptr inbounds %struct.unw_debug_frame_list, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %debug_frame, align 8
  %16 = ptrtoint ptr %15 to i64
  store i64 %16, ptr %debug_frame_base, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %as.addr, align 8
  %call5 = call ptr @_Ux86_64_get_accessors_int(ptr noundef %17)
  store ptr %call5, ptr %a, align 8
  %18 = load ptr, ptr %di.addr, align 8
  %u6 = getelementptr inbounds %struct.unw_dyn_info, ptr %18, i32 0, i32 8
  %segbase7 = getelementptr inbounds %struct.unw_dyn_remote_table_info, ptr %u6, i32 0, i32 1
  %19 = load i64, ptr %segbase7, align 8
  store i64 %19, ptr %segbase, align 8
  %20 = load ptr, ptr %di.addr, align 8
  %format8 = getelementptr inbounds %struct.unw_dyn_info, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %format8, align 8
  %cmp = icmp eq i32 %21, 4
  br i1 %cmp, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end
  %22 = load ptr, ptr %di.addr, align 8
  %start_ip = getelementptr inbounds %struct.unw_dyn_info, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %start_ip, align 8
  store i64 %23, ptr %ip_base, align 8
  br label %if.end11

if.else10:                                        ; preds = %if.end
  %24 = load i64, ptr %segbase, align 8
  store i64 %24, ptr %ip_base, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  %25 = load ptr, ptr %as.addr, align 8
  %26 = load ptr, ptr @_ULx86_64_local_addr_space, align 8
  %cmp12 = icmp eq ptr %25, %26
  br i1 %cmp12, label %if.then13, label %if.else27

if.then13:                                        ; preds = %if.end11
  %27 = load ptr, ptr %table, align 8
  %28 = load i64, ptr %table_len, align 8
  %29 = load i64, ptr %ip.addr, align 8
  %30 = load i64, ptr %ip_base, align 8
  %sub = sub i64 %29, %30
  %31 = load ptr, ptr %di.addr, align 8
  %load_offset = getelementptr inbounds %struct.unw_dyn_info, ptr %31, i32 0, i32 7
  %32 = load i64, ptr %load_offset, align 8
  %sub14 = sub i64 %sub, %32
  %conv = trunc i64 %sub14 to i32
  %call15 = call ptr @lookup(ptr noundef %27, i64 noundef %28, i32 noundef %conv)
  store ptr %call15, ptr %e, align 8
  %33 = load ptr, ptr %e, align 8
  %tobool16 = icmp ne ptr %33, null
  br i1 %tobool16, label %land.lhs.true, label %if.else25

land.lhs.true:                                    ; preds = %if.then13
  %34 = load ptr, ptr %e, align 8
  %arrayidx = getelementptr inbounds %struct.table_entry, ptr %34, i64 1
  %35 = load ptr, ptr %table, align 8
  %36 = load i64, ptr %table_len, align 8
  %arrayidx17 = getelementptr inbounds %struct.table_entry, ptr %35, i64 %36
  %cmp18 = icmp ult ptr %arrayidx, %arrayidx17
  br i1 %cmp18, label %if.then20, label %if.else25

if.then20:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %e, align 8
  %arrayidx21 = getelementptr inbounds %struct.table_entry, ptr %37, i64 1
  %start_ip_offset = getelementptr inbounds %struct.table_entry, ptr %arrayidx21, i32 0, i32 0
  %38 = load i32, ptr %start_ip_offset, align 4
  %conv22 = sext i32 %38 to i64
  %39 = load i64, ptr %ip_base, align 8
  %add = add i64 %conv22, %39
  %40 = load ptr, ptr %di.addr, align 8
  %load_offset23 = getelementptr inbounds %struct.unw_dyn_info, ptr %40, i32 0, i32 7
  %41 = load i64, ptr %load_offset23, align 8
  %add24 = add i64 %add, %41
  store i64 %add24, ptr %last_ip, align 8
  br label %if.end26

if.else25:                                        ; preds = %land.lhs.true, %if.then13
  %42 = load ptr, ptr %di.addr, align 8
  %end_ip = getelementptr inbounds %struct.unw_dyn_info, ptr %42, i32 0, i32 3
  %43 = load i64, ptr %end_ip, align 8
  store i64 %43, ptr %last_ip, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then20
  br label %if.end28

if.else27:                                        ; preds = %if.end11
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.end26
  %44 = load ptr, ptr %e, align 8
  %tobool29 = icmp ne ptr %44, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end28
  store i32 -10, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end28
  %45 = load i64, ptr %debug_frame_base, align 8
  %tobool32 = icmp ne i64 %45, 0
  br i1 %tobool32, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.end31
  %46 = load ptr, ptr %e, align 8
  %fde_offset = getelementptr inbounds %struct.table_entry, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %fde_offset, align 4
  %conv34 = sext i32 %47 to i64
  %48 = load i64, ptr %debug_frame_base, align 8
  %add35 = add i64 %conv34, %48
  store i64 %add35, ptr %fde_addr, align 8
  br label %if.end40

if.else36:                                        ; preds = %if.end31
  %49 = load ptr, ptr %e, align 8
  %fde_offset37 = getelementptr inbounds %struct.table_entry, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %fde_offset37, align 4
  %conv38 = sext i32 %50 to i64
  %51 = load i64, ptr %segbase, align 8
  %add39 = add i64 %conv38, %51
  store i64 %add39, ptr %fde_addr, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then33
  %52 = load ptr, ptr %as.addr, align 8
  %53 = load ptr, ptr %a, align 8
  %54 = load ptr, ptr %pi.addr, align 8
  %55 = load i64, ptr %debug_frame_base, align 8
  %tobool41 = icmp ne i64 %55, 0
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end40
  %56 = load i64, ptr %debug_frame_base, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end40
  %57 = load i64, ptr %segbase, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %56, %cond.true ], [ %57, %cond.false ]
  %58 = load i32, ptr %need_unwind_info.addr, align 4
  %59 = load i64, ptr %debug_frame_base, align 8
  %cmp42 = icmp ne i64 %59, 0
  %conv43 = zext i1 %cmp42 to i32
  %60 = load ptr, ptr %arg.addr, align 8
  %call44 = call i32 @_ULx86_64_dwarf_extract_proc_info_from_fde(ptr noundef %52, ptr noundef %53, ptr noundef %fde_addr, ptr noundef %54, i64 noundef %cond, i32 noundef %58, i32 noundef %conv43, ptr noundef %60)
  store i32 %call44, ptr %ret, align 4
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %cond.end
  %61 = load i32, ptr %ret, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %cond.end
  %62 = load ptr, ptr %di.addr, align 8
  %format49 = getelementptr inbounds %struct.unw_dyn_info, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %format49, align 8
  %cmp50 = icmp eq i32 %63, 1
  br i1 %cmp50, label %if.then52, label %if.end57

if.then52:                                        ; preds = %if.end48
  %64 = load i64, ptr %segbase, align 8
  %65 = load ptr, ptr %pi.addr, align 8
  %start_ip53 = getelementptr inbounds %struct.unw_proc_info, ptr %65, i32 0, i32 0
  %66 = load i64, ptr %start_ip53, align 8
  %add54 = add i64 %66, %64
  store i64 %add54, ptr %start_ip53, align 8
  %67 = load i64, ptr %segbase, align 8
  %68 = load ptr, ptr %pi.addr, align 8
  %end_ip55 = getelementptr inbounds %struct.unw_proc_info, ptr %68, i32 0, i32 1
  %69 = load i64, ptr %end_ip55, align 8
  %add56 = add i64 %69, %67
  store i64 %add56, ptr %end_ip55, align 8
  %70 = load ptr, ptr %pi.addr, align 8
  %flags = getelementptr inbounds %struct.unw_proc_info, ptr %70, i32 0, i32 5
  store i64 32, ptr %flags, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end48
  %71 = load ptr, ptr %di.addr, align 8
  %load_offset58 = getelementptr inbounds %struct.unw_dyn_info, ptr %71, i32 0, i32 7
  %72 = load i64, ptr %load_offset58, align 8
  %73 = load ptr, ptr %pi.addr, align 8
  %start_ip59 = getelementptr inbounds %struct.unw_proc_info, ptr %73, i32 0, i32 0
  %74 = load i64, ptr %start_ip59, align 8
  %add60 = add i64 %74, %72
  store i64 %add60, ptr %start_ip59, align 8
  %75 = load ptr, ptr %di.addr, align 8
  %load_offset61 = getelementptr inbounds %struct.unw_dyn_info, ptr %75, i32 0, i32 7
  %76 = load i64, ptr %load_offset61, align 8
  %77 = load ptr, ptr %pi.addr, align 8
  %end_ip62 = getelementptr inbounds %struct.unw_proc_info, ptr %77, i32 0, i32 1
  %78 = load i64, ptr %end_ip62, align 8
  %add63 = add i64 %78, %76
  store i64 %add63, ptr %end_ip62, align 8
  %79 = load i64, ptr %last_ip, align 8
  %80 = load i64, ptr %ip.addr, align 8
  %81 = load ptr, ptr %pi.addr, align 8
  %start_ip64 = getelementptr inbounds %struct.unw_proc_info, ptr %81, i32 0, i32 0
  %82 = load i64, ptr %start_ip64, align 8
  %cmp65 = icmp ult i64 %80, %82
  br i1 %cmp65, label %if.then70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end57
  %83 = load i64, ptr %ip.addr, align 8
  %84 = load ptr, ptr %pi.addr, align 8
  %end_ip67 = getelementptr inbounds %struct.unw_proc_info, ptr %84, i32 0, i32 1
  %85 = load i64, ptr %end_ip67, align 8
  %cmp68 = icmp uge i64 %83, %85
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %lor.lhs.false, %if.end57
  store i32 -10, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then70, %if.then47, %if.then30
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_remote_table(i32 noundef %format) #4 {
entry:
  %format.addr = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  %0 = load i32, ptr %format.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lookup(ptr noundef %table, i64 noundef %table_size, i32 noundef %rel_ip) #4 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %table_size.addr = alloca i64, align 8
  %rel_ip.addr = alloca i32, align 4
  %table_len = alloca i64, align 8
  %e = alloca ptr, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %mid = alloca i64, align 8
  store ptr %table, ptr %table.addr, align 8
  store i64 %table_size, ptr %table_size.addr, align 8
  store i32 %rel_ip, ptr %rel_ip.addr, align 4
  %0 = load i64, ptr %table_size.addr, align 8
  %div = udiv i64 %0, 8
  store i64 %div, ptr %table_len, align 8
  store ptr null, ptr %e, align 8
  store i64 0, ptr %lo, align 8
  %1 = load i64, ptr %table_len, align 8
  store i64 %1, ptr %hi, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i64, ptr %lo, align 8
  %3 = load i64, ptr %hi, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %lo, align 8
  %5 = load i64, ptr %hi, align 8
  %add = add i64 %4, %5
  %div1 = udiv i64 %add, 2
  store i64 %div1, ptr %mid, align 8
  %6 = load ptr, ptr %table.addr, align 8
  %7 = load i64, ptr %mid, align 8
  %add.ptr = getelementptr inbounds %struct.table_entry, ptr %6, i64 %7
  store ptr %add.ptr, ptr %e, align 8
  %8 = load i32, ptr %rel_ip.addr, align 4
  %9 = load ptr, ptr %e, align 8
  %start_ip_offset = getelementptr inbounds %struct.table_entry, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %start_ip_offset, align 4
  %cmp2 = icmp slt i32 %8, %10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i64, ptr %mid, align 8
  store i64 %11, ptr %hi, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load i64, ptr %mid, align 8
  %add3 = add i64 %12, 1
  store i64 %add3, ptr %lo, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %hi, align 8
  %cmp4 = icmp ule i64 %13, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %for.end
  %14 = load ptr, ptr %table.addr, align 8
  %15 = load i64, ptr %hi, align 8
  %add.ptr7 = getelementptr inbounds %struct.table_entry, ptr %14, i64 %15
  %add.ptr8 = getelementptr inbounds %struct.table_entry, ptr %add.ptr7, i64 -1
  store ptr %add.ptr8, ptr %e, align 8
  %16 = load ptr, ptr %e, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then5
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

declare i32 @_ULx86_64_dwarf_extract_proc_info_from_fde(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden void @_ULx86_64_dwarf_put_unwind_info(ptr noundef %as, ptr noundef %pi, ptr noundef %arg) #4 {
entry:
  %as.addr = alloca ptr, align 8
  %pi.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %as, ptr %as.addr, align 8
  store ptr %pi, ptr %pi.addr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare void @_Ux86_64_get_exe_image_path(ptr noundef) #1

; Function Attrs: noinline optnone uwtable
define internal i32 @elf_map_image(ptr noundef %ei, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %ei.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %stat = alloca %struct.stat, align 8
  %fd = alloca i32, align 4
  store ptr %ei, ptr %ei.addr, align 8
  store ptr %path, ptr %path.addr, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %call = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0)
  store i32 %call, ptr %fd, align 4
  %1 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fd, align 4
  %call1 = call i32 @fstat(i32 noundef %2, ptr noundef %stat) #9
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %fd, align 4
  %call4 = call i32 @close(i32 noundef %3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, ptr %stat, i32 0, i32 8
  %4 = load i64, ptr %st_size, align 8
  %5 = load ptr, ptr %ei.addr, align 8
  %size = getelementptr inbounds %struct.elf_image, ptr %5, i32 0, i32 1
  store i64 %4, ptr %size, align 8
  %6 = load ptr, ptr %ei.addr, align 8
  %size6 = getelementptr inbounds %struct.elf_image, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %size6, align 8
  %8 = load i32, ptr %fd, align 4
  %call7 = call ptr @mmap(ptr noundef null, i64 noundef %7, i32 noundef 1, i32 noundef 2, i32 noundef %8, i64 noundef 0) #9
  %9 = load ptr, ptr %ei.addr, align 8
  %image = getelementptr inbounds %struct.elf_image, ptr %9, i32 0, i32 0
  store ptr %call7, ptr %image, align 8
  %10 = load i32, ptr %fd, align 4
  %call8 = call i32 @close(i32 noundef %10)
  %11 = load ptr, ptr %ei.addr, align 8
  %image9 = getelementptr inbounds %struct.elf_image, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %image9, align 8
  %cmp10 = icmp eq ptr %12, inttoptr (i64 -1 to ptr)
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end5
  %13 = load ptr, ptr %ei.addr, align 8
  %call13 = call i32 @_Uelf64_valid_object(ptr noundef %13)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end12
  %14 = load ptr, ptr %ei.addr, align 8
  %image15 = getelementptr inbounds %struct.elf_image, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %image15, align 8
  %16 = load ptr, ptr %ei.addr, align 8
  %size16 = getelementptr inbounds %struct.elf_image, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %size16, align 8
  %call17 = call i32 @munmap(ptr noundef %15, i64 noundef %17) #9
  store i32 -1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then14, %if.then11, %if.then3, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare ptr @_Uelf64_find_section(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #6

declare i32 @open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #6

declare i32 @close(i32 noundef) #1

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Uelf64_valid_object(ptr noundef %ei) #4 {
entry:
  %retval = alloca i32, align 4
  %ei.addr = alloca ptr, align 8
  store ptr %ei, ptr %ei.addr, align 8
  %0 = load ptr, ptr %ei.addr, align 8
  %size = getelementptr inbounds %struct.elf_image, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %size, align 8
  %cmp = icmp ule i64 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ei.addr, align 8
  %image = getelementptr inbounds %struct.elf_image, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %image, align 8
  %call = call i32 @memcmp(ptr noundef %3, ptr noundef @.str.1, i64 noundef 4) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %ei.addr, align 8
  %image2 = getelementptr inbounds %struct.elf_image, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %image2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 4
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv, 2
  br i1 %cmp3, label %land.lhs.true5, label %land.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %ei.addr, align 8
  %image6 = getelementptr inbounds %struct.elf_image, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %image6, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 6
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true5
  %10 = load ptr, ptr %ei.addr, align 8
  %image11 = getelementptr inbounds %struct.elf_image, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %image11, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 6
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %cmp14 = icmp sle i32 %conv13, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true5, %land.lhs.true, %if.end
  %13 = phi i1 [ false, %land.lhs.true5 ], [ false, %land.lhs.true ], [ false, %if.end ], [ %cmp14, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #5

attributes #0 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
