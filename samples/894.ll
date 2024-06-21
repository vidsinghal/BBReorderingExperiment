; ModuleID = 'samples/894.bc'
source_filename = "src/FreeType/ftenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._FontEnc = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct._FontMap = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct._FTMapping = type { i32, ptr, i32, ptr }
%struct.TT_OS2_ = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [10 x i8], i64, i64, i64, i64, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i16, i16, i16 }
%struct.FT_FaceRec_ = type { i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, ptr, %struct.FT_Generic_, %struct.FT_BBox_, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.FT_ListRec_, %struct.FT_Generic_, ptr, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_ListRec_ = type { ptr, ptr }
%struct.FT_Generic_ = type { ptr, ptr }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }

@.str = private unnamed_addr constant [10 x i8] c"iso8859-1\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [11 x i8] c"iso10646-1\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [17 x i8] c"microsoft-symbol\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [48 x i8] c"FreeType: couldn't find encoding '%s' for '%s'\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [13 x i8] c"fontspecific\00", align 1, !dbg !32

; Function Attrs: nounwind uwtable
define hidden i32 @FTPickMapping(ptr noundef %xlfd, i32 noundef %length, ptr noundef %filename, ptr noundef %face, ptr noundef %tm) #0 !dbg !91 {
entry:
  %retval = alloca i32, align 4
  %xlfd.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %face.addr = alloca ptr, align 8
  %tm.addr = alloca ptr, align 8
  %encoding = alloca ptr, align 8
  %mapping = alloca ptr, align 8
  %cmap = alloca ptr, align 8
  %ftrc = alloca i32, align 4
  %symbol = alloca i32, align 4
  %enc = alloca ptr, align 8
  %reg = alloca ptr, align 8
  %encoding_name = alloca ptr, align 8
  %buf = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %os2 = alloca ptr, align 8
  store ptr %xlfd, ptr %xlfd.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %xlfd.addr, metadata !385, metadata !DIExpression()), !dbg !465
  store i32 %length, ptr %length.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !386, metadata !DIExpression()), !dbg !466
  store ptr %filename, ptr %filename.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !387, metadata !DIExpression()), !dbg !467
  store ptr %face, ptr %face.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %face.addr, metadata !388, metadata !DIExpression()), !dbg !468
  store ptr %tm, ptr %tm.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !389, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding) #6, !dbg !470
  tail call void @llvm.dbg.declare(metadata ptr %encoding, metadata !390, metadata !DIExpression()), !dbg !471
  call void @llvm.lifetime.start.p0(i64 8, ptr %mapping) #6, !dbg !472
  tail call void @llvm.dbg.declare(metadata ptr %mapping, metadata !392, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmap) #6, !dbg !474
  tail call void @llvm.dbg.declare(metadata ptr %cmap, metadata !393, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 4, ptr %ftrc) #6, !dbg !476
  tail call void @llvm.dbg.declare(metadata ptr %ftrc, metadata !394, metadata !DIExpression()), !dbg !477
  call void @llvm.lifetime.start.p0(i64 4, ptr %symbol) #6, !dbg !478
  tail call void @llvm.dbg.declare(metadata ptr %symbol, metadata !395, metadata !DIExpression()), !dbg !479
  store i32 0, ptr %symbol, align 4, !dbg !479
  call void @llvm.lifetime.start.p0(i64 8, ptr %enc) #6, !dbg !480
  tail call void @llvm.dbg.declare(metadata ptr %enc, metadata !396, metadata !DIExpression()), !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #6, !dbg !480
  tail call void @llvm.dbg.declare(metadata ptr %reg, metadata !399, metadata !DIExpression()), !dbg !482
  call void @llvm.lifetime.start.p0(i64 8, ptr %encoding_name) #6, !dbg !483
  tail call void @llvm.dbg.declare(metadata ptr %encoding_name, metadata !400, metadata !DIExpression()), !dbg !484
  store ptr null, ptr %encoding_name, align 8, !dbg !484
  call void @llvm.lifetime.start.p0(i64 20, ptr %buf) #6, !dbg !485
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !401, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %xlfd.addr, align 8, !dbg !487
  %tobool = icmp ne ptr %0, null, !dbg !487
  br i1 %tobool, label %if.then, label %if.end, !dbg !489

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %xlfd.addr, align 8, !dbg !490
  %2 = load i32, ptr %length.addr, align 4, !dbg !491
  %call = call ptr @FontEncFromXLFD(ptr noundef %1, i32 noundef %2), !dbg !492
  store ptr %call, ptr %encoding_name, align 8, !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %encoding_name, align 8, !dbg !495
  %tobool1 = icmp ne ptr %3, null, !dbg !495
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !497

if.then2:                                         ; preds = %if.end
  store ptr @.str, ptr %encoding_name, align 8, !dbg !498
  br label %if.end3, !dbg !499

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %encoding_name, align 8, !dbg !500
  %call4 = call i32 @FTEncFontSpecific(ptr noundef %4), !dbg !501
  store i32 %call4, ptr %symbol, align 4, !dbg !502
  %5 = load ptr, ptr %face.addr, align 8, !dbg !503
  %call5 = call i32 @FT_Get_BDF_Charset_ID(ptr noundef %5, ptr noundef %enc, ptr noundef %reg), !dbg !504
  store i32 %call5, ptr %ftrc, align 4, !dbg !505
  %6 = load i32, ptr %ftrc, align 4, !dbg !506
  %cmp = icmp eq i32 %6, 0, !dbg !508
  br i1 %cmp, label %if.then6, label %if.else, !dbg !509

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %enc, align 8, !dbg !510
  %call7 = call i64 @strlen(ptr noundef %7) #7, !dbg !513
  %8 = load ptr, ptr %reg, align 8, !dbg !514
  %call8 = call i64 @strlen(ptr noundef %8) #7, !dbg !515
  %add = add i64 %call7, %call8, !dbg !516
  %cmp9 = icmp ugt i64 %add, 18, !dbg !517
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !518

if.then10:                                        ; preds = %if.then6
  br label %native, !dbg !519

if.end11:                                         ; preds = %if.then6
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !520
  %9 = load ptr, ptr %enc, align 8, !dbg !521
  %10 = load ptr, ptr %reg, align 8, !dbg !522
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str.1, ptr noundef %9, ptr noundef %10) #6, !dbg !523
  %arraydecay13 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !524
  %11 = load ptr, ptr %encoding_name, align 8, !dbg !525
  call void (ptr, ...) @__libxfont__ErrorF(ptr noundef @.str.2, ptr noundef %arraydecay13, ptr noundef %11), !dbg !526
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !527
  %call15 = call i32 @strcasecmp(ptr noundef %arraydecay14, ptr noundef @.str.3) #7, !dbg !529
  %cmp16 = icmp ne i32 %call15, 0, !dbg !530
  br i1 %cmp16, label %if.then17, label %if.end23, !dbg !531

if.then17:                                        ; preds = %if.end11
  %arraydecay18 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0, !dbg !532
  %12 = load ptr, ptr %encoding_name, align 8, !dbg !535
  %call19 = call i32 @strcasecmp(ptr noundef %arraydecay18, ptr noundef %12) #7, !dbg !536
  %cmp20 = icmp eq i32 %call19, 0, !dbg !537
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !538

if.then21:                                        ; preds = %if.then17
  br label %native, !dbg !539

if.end22:                                         ; preds = %if.then17
  store i32 88, ptr %retval, align 4, !dbg !540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !540

if.end23:                                         ; preds = %if.end11
  br label %if.end31, !dbg !541

if.else:                                          ; preds = %if.end3
  %13 = load i32, ptr %symbol, align 4, !dbg !542
  %tobool24 = icmp ne i32 %13, 0, !dbg !542
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !544

if.then25:                                        ; preds = %if.else
  %14 = load ptr, ptr %face.addr, align 8, !dbg !545
  %call26 = call i32 @FT_Select_Charmap(ptr noundef %14, i32 noundef 1094992451), !dbg !547
  store i32 %call26, ptr %ftrc, align 4, !dbg !548
  %15 = load i32, ptr %ftrc, align 4, !dbg !549
  %cmp27 = icmp eq i32 %15, 0, !dbg !551
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !552

if.then28:                                        ; preds = %if.then25
  br label %native, !dbg !553

if.end29:                                         ; preds = %if.then25
  br label %if.end30, !dbg !554

if.end30:                                         ; preds = %if.end29, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end23
  %16 = load ptr, ptr %encoding_name, align 8, !dbg !555
  %17 = load ptr, ptr %filename.addr, align 8, !dbg !556
  %call32 = call ptr @FontEncFind(ptr noundef %16, ptr noundef %17), !dbg !557
  store ptr %call32, ptr %encoding, align 8, !dbg !558
  %18 = load i32, ptr %symbol, align 4, !dbg !559
  %tobool33 = icmp ne i32 %18, 0, !dbg !559
  br i1 %tobool33, label %land.lhs.true, label %if.end37, !dbg !561

land.lhs.true:                                    ; preds = %if.end31
  %19 = load ptr, ptr %encoding, align 8, !dbg !562
  %cmp34 = icmp eq ptr %19, null, !dbg !563
  br i1 %cmp34, label %if.then35, label %if.end37, !dbg !564

if.then35:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %filename.addr, align 8, !dbg !565
  %call36 = call ptr @FontEncFind(ptr noundef @.str.4, ptr noundef %20), !dbg !566
  store ptr %call36, ptr %encoding, align 8, !dbg !567
  br label %if.end37, !dbg !568

if.end37:                                         ; preds = %if.then35, %land.lhs.true, %if.end31
  %21 = load ptr, ptr %encoding, align 8, !dbg !569
  %cmp38 = icmp eq ptr %21, null, !dbg !571
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !572

if.then39:                                        ; preds = %if.end37
  %22 = load ptr, ptr %encoding_name, align 8, !dbg !573
  %23 = load ptr, ptr %filename.addr, align 8, !dbg !575
  call void (ptr, ...) @__libxfont__ErrorF(ptr noundef @.str.5, ptr noundef %22, ptr noundef %23), !dbg !576
  store i32 83, ptr %retval, align 4, !dbg !577
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !577

if.end40:                                         ; preds = %if.end37
  %24 = load ptr, ptr %face.addr, align 8, !dbg !578
  %call41 = call i32 @FT_Has_PS_Glyph_Names(ptr noundef %24), !dbg !580
  %tobool42 = icmp ne i32 %call41, 0, !dbg !580
  br i1 %tobool42, label %if.then43, label %if.end49, !dbg !581

if.then43:                                        ; preds = %if.end40
  %25 = load ptr, ptr %encoding, align 8, !dbg !582
  %mappings = getelementptr inbounds %struct._FontEnc, ptr %25, i32 0, i32 4, !dbg !585
  %26 = load ptr, ptr %mappings, align 8, !dbg !585
  store ptr %26, ptr %mapping, align 8, !dbg !586
  br label %for.cond, !dbg !587

for.cond:                                         ; preds = %for.inc, %if.then43
  %27 = load ptr, ptr %mapping, align 8, !dbg !588
  %tobool44 = icmp ne ptr %27, null, !dbg !590
  br i1 %tobool44, label %for.body, label %for.end, !dbg !590

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %mapping, align 8, !dbg !591
  %type = getelementptr inbounds %struct._FontMap, ptr %28, i32 0, i32 0, !dbg !594
  %29 = load i32, ptr %type, align 8, !dbg !594
  %cmp45 = icmp eq i32 %29, 3, !dbg !595
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !596

if.then46:                                        ; preds = %for.body
  %30 = load ptr, ptr %tm.addr, align 8, !dbg !597
  %named = getelementptr inbounds %struct._FTMapping, ptr %30, i32 0, i32 0, !dbg !599
  store i32 1, ptr %named, align 8, !dbg !600
  %31 = load ptr, ptr %tm.addr, align 8, !dbg !601
  %base = getelementptr inbounds %struct._FTMapping, ptr %31, i32 0, i32 2, !dbg !602
  store i32 0, ptr %base, align 8, !dbg !603
  %32 = load ptr, ptr %mapping, align 8, !dbg !604
  %33 = load ptr, ptr %tm.addr, align 8, !dbg !605
  %mapping47 = getelementptr inbounds %struct._FTMapping, ptr %33, i32 0, i32 3, !dbg !606
  store ptr %32, ptr %mapping47, align 8, !dbg !607
  store i32 85, ptr %retval, align 4, !dbg !608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !608

if.end48:                                         ; preds = %for.body
  br label %for.inc, !dbg !609

for.inc:                                          ; preds = %if.end48
  %34 = load ptr, ptr %mapping, align 8, !dbg !610
  %next = getelementptr inbounds %struct._FontMap, ptr %34, i32 0, i32 6, !dbg !611
  %35 = load ptr, ptr %next, align 8, !dbg !611
  store ptr %35, ptr %mapping, align 8, !dbg !612
  br label %for.cond, !dbg !613, !llvm.loop !614

for.end:                                          ; preds = %for.cond
  br label %if.end49, !dbg !617

if.end49:                                         ; preds = %for.end, %if.end40
  %36 = load ptr, ptr %encoding, align 8, !dbg !618
  %mappings50 = getelementptr inbounds %struct._FontEnc, ptr %36, i32 0, i32 4, !dbg !619
  %37 = load ptr, ptr %mappings50, align 8, !dbg !619
  store ptr %37, ptr %mapping, align 8, !dbg !620
  br label %for.cond51, !dbg !621

for.cond51:                                       ; preds = %for.inc74, %if.end49
  %38 = load ptr, ptr %mapping, align 8, !dbg !622
  %tobool52 = icmp ne ptr %38, null, !dbg !623
  br i1 %tobool52, label %for.body53, label %for.end76, !dbg !623

for.body53:                                       ; preds = %for.cond51
  %39 = load ptr, ptr %mapping, align 8, !dbg !624
  %type54 = getelementptr inbounds %struct._FontMap, ptr %39, i32 0, i32 0, !dbg !625
  %40 = load i32, ptr %type54, align 8, !dbg !625
  %41 = load ptr, ptr %mapping, align 8, !dbg !626
  %pid = getelementptr inbounds %struct._FontMap, ptr %41, i32 0, i32 1, !dbg !627
  %42 = load i32, ptr %pid, align 4, !dbg !627
  %43 = load ptr, ptr %mapping, align 8, !dbg !628
  %eid = getelementptr inbounds %struct._FontMap, ptr %43, i32 0, i32 2, !dbg !629
  %44 = load i32, ptr %eid, align 8, !dbg !629
  %45 = load ptr, ptr %face.addr, align 8, !dbg !630
  %call55 = call i32 @find_cmap(i32 noundef %40, i32 noundef %42, i32 noundef %44, ptr noundef %45, ptr noundef %cmap), !dbg !631
  %tobool56 = icmp ne i32 %call55, 0, !dbg !631
  br i1 %tobool56, label %if.then57, label %if.end73, !dbg !632

if.then57:                                        ; preds = %for.body53
  %46 = load ptr, ptr %tm.addr, align 8, !dbg !633
  %named58 = getelementptr inbounds %struct._FTMapping, ptr %46, i32 0, i32 0, !dbg !634
  store i32 0, ptr %named58, align 8, !dbg !635
  %47 = load ptr, ptr %cmap, align 8, !dbg !636
  %48 = load ptr, ptr %tm.addr, align 8, !dbg !637
  %cmap59 = getelementptr inbounds %struct._FTMapping, ptr %48, i32 0, i32 1, !dbg !638
  store ptr %47, ptr %cmap59, align 8, !dbg !639
  %49 = load i32, ptr %symbol, align 4, !dbg !640
  %tobool60 = icmp ne i32 %49, 0, !dbg !640
  br i1 %tobool60, label %if.then61, label %if.else69, !dbg !641

if.then61:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 8, ptr %os2) #6, !dbg !642
  tail call void @llvm.dbg.declare(metadata ptr %os2, metadata !405, metadata !DIExpression()), !dbg !643
  %50 = load ptr, ptr %face.addr, align 8, !dbg !644
  %call62 = call ptr @FT_Get_Sfnt_Table(ptr noundef %50, i32 noundef 2), !dbg !645
  store ptr %call62, ptr %os2, align 8, !dbg !646
  %51 = load ptr, ptr %os2, align 8, !dbg !647
  %tobool63 = icmp ne ptr %51, null, !dbg !647
  br i1 %tobool63, label %if.then64, label %if.else66, !dbg !649

if.then64:                                        ; preds = %if.then61
  %52 = load ptr, ptr %os2, align 8, !dbg !650
  %usFirstCharIndex = getelementptr inbounds %struct.TT_OS2_, ptr %52, i32 0, i32 23, !dbg !651
  %53 = load i16, ptr %usFirstCharIndex, align 2, !dbg !651
  %conv = zext i16 %53 to i32, !dbg !650
  %sub = sub nsw i32 %conv, 32, !dbg !652
  %54 = load ptr, ptr %tm.addr, align 8, !dbg !653
  %base65 = getelementptr inbounds %struct._FTMapping, ptr %54, i32 0, i32 2, !dbg !654
  store i32 %sub, ptr %base65, align 8, !dbg !655
  br label %if.end68, !dbg !653

if.else66:                                        ; preds = %if.then61
  %55 = load ptr, ptr %tm.addr, align 8, !dbg !656
  %base67 = getelementptr inbounds %struct._FTMapping, ptr %55, i32 0, i32 2, !dbg !657
  store i32 0, ptr %base67, align 8, !dbg !658
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  call void @llvm.lifetime.end.p0(i64 8, ptr %os2) #6, !dbg !659
  br label %if.end71, !dbg !660

if.else69:                                        ; preds = %if.then57
  %56 = load ptr, ptr %tm.addr, align 8, !dbg !661
  %base70 = getelementptr inbounds %struct._FTMapping, ptr %56, i32 0, i32 2, !dbg !662
  store i32 0, ptr %base70, align 8, !dbg !663
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.end68
  %57 = load ptr, ptr %mapping, align 8, !dbg !664
  %58 = load ptr, ptr %tm.addr, align 8, !dbg !665
  %mapping72 = getelementptr inbounds %struct._FTMapping, ptr %58, i32 0, i32 3, !dbg !666
  store ptr %57, ptr %mapping72, align 8, !dbg !667
  store i32 85, ptr %retval, align 4, !dbg !668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !668

if.end73:                                         ; preds = %for.body53
  br label %for.inc74, !dbg !669

for.inc74:                                        ; preds = %if.end73
  %59 = load ptr, ptr %mapping, align 8, !dbg !670
  %next75 = getelementptr inbounds %struct._FontMap, ptr %59, i32 0, i32 6, !dbg !671
  %60 = load ptr, ptr %next75, align 8, !dbg !671
  store ptr %60, ptr %mapping, align 8, !dbg !672
  br label %for.cond51, !dbg !673, !llvm.loop !674

for.end76:                                        ; preds = %for.cond51
  store i32 88, ptr %retval, align 4, !dbg !676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !676

native:                                           ; preds = %if.then28, %if.then21, %if.then10
  tail call void @llvm.dbg.label(metadata !464), !dbg !677
  %61 = load ptr, ptr %tm.addr, align 8, !dbg !678
  %named77 = getelementptr inbounds %struct._FTMapping, ptr %61, i32 0, i32 0, !dbg !679
  store i32 0, ptr %named77, align 8, !dbg !680
  %62 = load ptr, ptr %face.addr, align 8, !dbg !681
  %charmap = getelementptr inbounds %struct.FT_FaceRec_, ptr %62, i32 0, i32 23, !dbg !682
  %63 = load ptr, ptr %charmap, align 8, !dbg !682
  %64 = load ptr, ptr %tm.addr, align 8, !dbg !683
  %cmap78 = getelementptr inbounds %struct._FTMapping, ptr %64, i32 0, i32 1, !dbg !684
  store ptr %63, ptr %cmap78, align 8, !dbg !685
  %65 = load ptr, ptr %tm.addr, align 8, !dbg !686
  %base79 = getelementptr inbounds %struct._FTMapping, ptr %65, i32 0, i32 2, !dbg !687
  store i32 0, ptr %base79, align 8, !dbg !688
  %66 = load ptr, ptr %tm.addr, align 8, !dbg !689
  %mapping80 = getelementptr inbounds %struct._FTMapping, ptr %66, i32 0, i32 3, !dbg !690
  store ptr null, ptr %mapping80, align 8, !dbg !691
  store i32 85, ptr %retval, align 4, !dbg !692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !692

cleanup:                                          ; preds = %native, %for.end76, %if.end71, %if.then46, %if.then39, %if.end22
  call void @llvm.lifetime.end.p0(i64 20, ptr %buf) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding_name) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %enc) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 4, ptr %symbol) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 4, ptr %ftrc) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmap) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %mapping) #6, !dbg !693
  call void @llvm.lifetime.end.p0(i64 8, ptr %encoding) #6, !dbg !693
  %67 = load i32, ptr %retval, align 4, !dbg !693
  ret i32 %67, !dbg !693
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !694 ptr @FontEncFromXLFD(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @FTEncFontSpecific(ptr noundef %encoding) #0 !dbg !697 {
entry:
  %retval = alloca i32, align 4
  %encoding.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %encoding, ptr %encoding.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %encoding.addr, metadata !701, metadata !DIExpression()), !dbg !703
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !702, metadata !DIExpression()), !dbg !705
  %0 = load ptr, ptr %encoding.addr, align 8, !dbg !706
  store ptr %0, ptr %p, align 8, !dbg !705
  %1 = load ptr, ptr %encoding.addr, align 8, !dbg !707
  %call = call i32 @strcasecmp(ptr noundef %1, ptr noundef @.str.4) #7, !dbg !709
  %cmp = icmp eq i32 %call, 0, !dbg !710
  br i1 %cmp, label %if.then, label %if.end, !dbg !711

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !712

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !713

while.cond:                                       ; preds = %if.end7, %if.end
  %2 = load ptr, ptr %p, align 8, !dbg !714
  %3 = load i8, ptr %2, align 1, !dbg !715
  %conv = sext i8 %3 to i32, !dbg !715
  %cmp1 = icmp ne i32 %conv, 45, !dbg !716
  br i1 %cmp1, label %while.body, label %while.end, !dbg !713

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %p, align 8, !dbg !717
  %5 = load i8, ptr %4, align 1, !dbg !720
  %conv3 = sext i8 %5 to i32, !dbg !720
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !721
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !722

if.then6:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !723

if.end7:                                          ; preds = %while.body
  %6 = load ptr, ptr %p, align 8, !dbg !724
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1, !dbg !724
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !724
  br label %while.cond, !dbg !713, !llvm.loop !725

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %p, align 8, !dbg !727
  %incdec.ptr8 = getelementptr inbounds i8, ptr %7, i32 1, !dbg !727
  store ptr %incdec.ptr8, ptr %p, align 8, !dbg !727
  %8 = load ptr, ptr %p, align 8, !dbg !728
  %call9 = call i32 @strcasecmp(ptr noundef %8, ptr noundef @.str.6) #7, !dbg !729
  %cmp10 = icmp eq i32 %call9, 0, !dbg !730
  %conv11 = zext i1 %cmp10 to i32, !dbg !730
  store i32 %conv11, ptr %retval, align 4, !dbg !731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !731

cleanup:                                          ; preds = %while.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !732
  %9 = load i32, ptr %retval, align 4, !dbg !732
  ret i32 %9, !dbg !732
}

declare !dbg !733 i32 @FT_Get_BDF_Charset_ID(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !739 i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !743 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare !dbg !751 void @__libxfont__ErrorF(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !755 i32 @strcasecmp(ptr noundef, ptr noundef) #3

declare !dbg !759 i32 @FT_Select_Charmap(ptr noundef, i32 noundef) #2

declare !dbg !762 ptr @FontEncFind(ptr noundef, ptr noundef) #2

declare !dbg !765 i32 @FT_Has_PS_Glyph_Names(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @find_cmap(i32 noundef %type, i32 noundef %pid, i32 noundef %eid, ptr noundef %face, ptr noundef %cmap_return) #0 !dbg !769 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %pid.addr = alloca i32, align 4
  %eid.addr = alloca i32, align 4
  %face.addr = alloca ptr, align 8
  %cmap_return.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %cmap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !773, metadata !DIExpression()), !dbg !781
  store i32 %pid, ptr %pid.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %pid.addr, metadata !774, metadata !DIExpression()), !dbg !782
  store i32 %eid, ptr %eid.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %eid.addr, metadata !775, metadata !DIExpression()), !dbg !783
  store ptr %face, ptr %face.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %face.addr, metadata !776, metadata !DIExpression()), !dbg !784
  store ptr %cmap_return, ptr %cmap_return.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cmap_return.addr, metadata !777, metadata !DIExpression()), !dbg !785
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !786
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !778, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6, !dbg !786
  tail call void @llvm.dbg.declare(metadata ptr %n, metadata !779, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.start.p0(i64 8, ptr %cmap) #6, !dbg !789
  tail call void @llvm.dbg.declare(metadata ptr %cmap, metadata !780, metadata !DIExpression()), !dbg !790
  store ptr null, ptr %cmap, align 8, !dbg !790
  %0 = load ptr, ptr %face.addr, align 8, !dbg !791
  %num_charmaps = getelementptr inbounds %struct.FT_FaceRec_, ptr %0, i32 0, i32 9, !dbg !792
  %1 = load i32, ptr %num_charmaps, align 8, !dbg !792
  store i32 %1, ptr %n, align 4, !dbg !793
  %2 = load i32, ptr %type.addr, align 4, !dbg !794
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
  ], !dbg !795

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !796
  br label %for.cond, !dbg !799

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, ptr %i, align 4, !dbg !800
  %4 = load i32, ptr %n, align 4, !dbg !802
  %cmp = icmp slt i32 %3, %4, !dbg !803
  br i1 %cmp, label %for.body, label %for.end, !dbg !804

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %face.addr, align 8, !dbg !805
  %charmaps = getelementptr inbounds %struct.FT_FaceRec_, ptr %5, i32 0, i32 10, !dbg !807
  %6 = load ptr, ptr %charmaps, align 8, !dbg !807
  %7 = load i32, ptr %i, align 4, !dbg !808
  %idxprom = sext i32 %7 to i64, !dbg !805
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom, !dbg !805
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !805
  store ptr %8, ptr %cmap, align 8, !dbg !809
  %9 = load ptr, ptr %cmap, align 8, !dbg !810
  %platform_id = getelementptr inbounds %struct.FT_CharMapRec_, ptr %9, i32 0, i32 2, !dbg !812
  %10 = load i16, ptr %platform_id, align 4, !dbg !812
  %conv = zext i16 %10 to i32, !dbg !810
  %11 = load i32, ptr %pid.addr, align 4, !dbg !813
  %cmp1 = icmp eq i32 %conv, %11, !dbg !814
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !815

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %cmap, align 8, !dbg !816
  %encoding_id = getelementptr inbounds %struct.FT_CharMapRec_, ptr %12, i32 0, i32 3, !dbg !817
  %13 = load i16, ptr %encoding_id, align 2, !dbg !817
  %conv3 = zext i16 %13 to i32, !dbg !816
  %14 = load i32, ptr %eid.addr, align 4, !dbg !818
  %cmp4 = icmp eq i32 %conv3, %14, !dbg !819
  br i1 %cmp4, label %if.then, label %if.end, !dbg !820

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %cmap, align 8, !dbg !821
  %16 = load ptr, ptr %cmap_return.addr, align 8, !dbg !823
  store ptr %15, ptr %16, align 8, !dbg !824
  store i32 1, ptr %retval, align 4, !dbg !825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !825

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !826

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !dbg !827
  %inc = add nsw i32 %17, 1, !dbg !827
  store i32 %inc, ptr %i, align 4, !dbg !827
  br label %for.cond, !dbg !828, !llvm.loop !829

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !831

sw.bb6:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !832
  br label %for.cond7, !dbg !834

for.cond7:                                        ; preds = %for.inc25, %sw.bb6
  %18 = load i32, ptr %i, align 4, !dbg !835
  %19 = load i32, ptr %n, align 4, !dbg !837
  %cmp8 = icmp slt i32 %18, %19, !dbg !838
  br i1 %cmp8, label %for.body10, label %for.end27, !dbg !839

for.body10:                                       ; preds = %for.cond7
  %20 = load ptr, ptr %face.addr, align 8, !dbg !840
  %charmaps11 = getelementptr inbounds %struct.FT_FaceRec_, ptr %20, i32 0, i32 10, !dbg !842
  %21 = load ptr, ptr %charmaps11, align 8, !dbg !842
  %22 = load i32, ptr %i, align 4, !dbg !843
  %idxprom12 = sext i32 %22 to i64, !dbg !840
  %arrayidx13 = getelementptr inbounds ptr, ptr %21, i64 %idxprom12, !dbg !840
  %23 = load ptr, ptr %arrayidx13, align 8, !dbg !840
  store ptr %23, ptr %cmap, align 8, !dbg !844
  %24 = load ptr, ptr %cmap, align 8, !dbg !845
  %platform_id14 = getelementptr inbounds %struct.FT_CharMapRec_, ptr %24, i32 0, i32 2, !dbg !847
  %25 = load i16, ptr %platform_id14, align 4, !dbg !847
  %conv15 = zext i16 %25 to i32, !dbg !845
  %cmp16 = icmp eq i32 %conv15, 3, !dbg !848
  br i1 %cmp16, label %land.lhs.true18, label %if.end24, !dbg !849

land.lhs.true18:                                  ; preds = %for.body10
  %26 = load ptr, ptr %cmap, align 8, !dbg !850
  %encoding_id19 = getelementptr inbounds %struct.FT_CharMapRec_, ptr %26, i32 0, i32 3, !dbg !851
  %27 = load i16, ptr %encoding_id19, align 2, !dbg !851
  %conv20 = zext i16 %27 to i32, !dbg !850
  %cmp21 = icmp eq i32 %conv20, 1, !dbg !852
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !853

if.then23:                                        ; preds = %land.lhs.true18
  %28 = load ptr, ptr %cmap, align 8, !dbg !854
  %29 = load ptr, ptr %cmap_return.addr, align 8, !dbg !856
  store ptr %28, ptr %29, align 8, !dbg !857
  store i32 1, ptr %retval, align 4, !dbg !858
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !858

if.end24:                                         ; preds = %land.lhs.true18, %for.body10
  br label %for.inc25, !dbg !859

for.inc25:                                        ; preds = %if.end24
  %30 = load i32, ptr %i, align 4, !dbg !860
  %inc26 = add nsw i32 %30, 1, !dbg !860
  store i32 %inc26, ptr %i, align 4, !dbg !860
  br label %for.cond7, !dbg !861, !llvm.loop !862

for.end27:                                        ; preds = %for.cond7
  br label %sw.epilog, !dbg !864

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !865

sw.epilog:                                        ; preds = %for.end27, %for.end
  store i32 0, ptr %retval, align 4, !dbg !866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !866

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cmap) #6, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !867
  %31 = load i32, ptr %retval, align 4, !dbg !867
  ret i32 %31, !dbg !867
}

declare !dbg !868 ptr @FT_Get_Sfnt_Table(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @FTRemap(ptr noundef %face, ptr noundef %tm, i32 noundef %code) #0 !dbg !872 {
entry:
  %retval = alloca i32, align 4
  %face.addr = alloca ptr, align 8
  %tm.addr = alloca ptr, align 8
  %code.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %name = alloca ptr, align 8
  %glyph_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %face, ptr %face.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %face.addr, metadata !876, metadata !DIExpression()), !dbg !882
  store ptr %tm, ptr %tm.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !877, metadata !DIExpression()), !dbg !883
  store i32 %code, ptr %code.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !878, metadata !DIExpression()), !dbg !884
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #6, !dbg !885
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !879, metadata !DIExpression()), !dbg !886
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6, !dbg !887
  tail call void @llvm.dbg.declare(metadata ptr %name, metadata !880, metadata !DIExpression()), !dbg !888
  call void @llvm.lifetime.start.p0(i64 4, ptr %glyph_index) #6, !dbg !889
  tail call void @llvm.dbg.declare(metadata ptr %glyph_index, metadata !881, metadata !DIExpression()), !dbg !890
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !891
  %mapping = getelementptr inbounds %struct._FTMapping, ptr %0, i32 0, i32 3, !dbg !893
  %1 = load ptr, ptr %mapping, align 8, !dbg !893
  %tobool = icmp ne ptr %1, null, !dbg !891
  br i1 %tobool, label %if.then, label %if.else11, !dbg !894

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !895
  %named = getelementptr inbounds %struct._FTMapping, ptr %2, i32 0, i32 0, !dbg !898
  %3 = load i32, ptr %named, align 8, !dbg !898
  %tobool1 = icmp ne i32 %3, 0, !dbg !895
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !899

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %code.addr, align 4, !dbg !900
  %5 = load ptr, ptr %tm.addr, align 8, !dbg !902
  %mapping3 = getelementptr inbounds %struct._FTMapping, ptr %5, i32 0, i32 3, !dbg !903
  %6 = load ptr, ptr %mapping3, align 8, !dbg !903
  %call = call ptr @FontEncName(i32 noundef %4, ptr noundef %6), !dbg !904
  store ptr %call, ptr %name, align 8, !dbg !905
  %7 = load ptr, ptr %name, align 8, !dbg !906
  %tobool4 = icmp ne ptr %7, null, !dbg !906
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !908

if.then5:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4, !dbg !909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !909

if.end:                                           ; preds = %if.then2
  %8 = load ptr, ptr %face.addr, align 8, !dbg !910
  %9 = load ptr, ptr %name, align 8, !dbg !911
  %call6 = call i32 @FT_Get_Name_Index(ptr noundef %8, ptr noundef %9), !dbg !912
  store i32 %call6, ptr %glyph_index, align 4, !dbg !913
  %10 = load i32, ptr %glyph_index, align 4, !dbg !914
  store i32 %10, ptr %retval, align 4, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

if.else:                                          ; preds = %if.then
  %11 = load i32, ptr %code.addr, align 4, !dbg !916
  %12 = load ptr, ptr %tm.addr, align 8, !dbg !918
  %mapping7 = getelementptr inbounds %struct._FTMapping, ptr %12, i32 0, i32 3, !dbg !919
  %13 = load ptr, ptr %mapping7, align 8, !dbg !919
  %call8 = call i32 @FontEncRecode(i32 noundef %11, ptr noundef %13), !dbg !920
  %14 = load ptr, ptr %tm.addr, align 8, !dbg !921
  %base = getelementptr inbounds %struct._FTMapping, ptr %14, i32 0, i32 2, !dbg !922
  %15 = load i32, ptr %base, align 8, !dbg !922
  %add = add i32 %call8, %15, !dbg !923
  store i32 %add, ptr %index, align 4, !dbg !924
  %16 = load ptr, ptr %face.addr, align 8, !dbg !925
  %17 = load ptr, ptr %tm.addr, align 8, !dbg !926
  %cmap = getelementptr inbounds %struct._FTMapping, ptr %17, i32 0, i32 1, !dbg !927
  %18 = load ptr, ptr %cmap, align 8, !dbg !927
  %call9 = call i32 @FT_Set_Charmap(ptr noundef %16, ptr noundef %18), !dbg !928
  %19 = load ptr, ptr %face.addr, align 8, !dbg !929
  %20 = load i32, ptr %index, align 4, !dbg !930
  %conv = zext i32 %20 to i64, !dbg !930
  %call10 = call i32 @FT_Get_Char_Index(ptr noundef %19, i64 noundef %conv), !dbg !931
  store i32 %call10, ptr %glyph_index, align 4, !dbg !932
  %21 = load i32, ptr %glyph_index, align 4, !dbg !933
  store i32 %21, ptr %retval, align 4, !dbg !934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !934

if.else11:                                        ; preds = %entry
  %22 = load i32, ptr %code.addr, align 4, !dbg !935
  %cmp = icmp ult i32 %22, 256, !dbg !938
  br i1 %cmp, label %if.then13, label %if.else18, !dbg !939

if.then13:                                        ; preds = %if.else11
  %23 = load i32, ptr %code.addr, align 4, !dbg !940
  store i32 %23, ptr %index, align 4, !dbg !942
  %24 = load ptr, ptr %face.addr, align 8, !dbg !943
  %25 = load ptr, ptr %tm.addr, align 8, !dbg !944
  %cmap14 = getelementptr inbounds %struct._FTMapping, ptr %25, i32 0, i32 1, !dbg !945
  %26 = load ptr, ptr %cmap14, align 8, !dbg !945
  %call15 = call i32 @FT_Set_Charmap(ptr noundef %24, ptr noundef %26), !dbg !946
  %27 = load ptr, ptr %face.addr, align 8, !dbg !947
  %28 = load i32, ptr %index, align 4, !dbg !948
  %conv16 = zext i32 %28 to i64, !dbg !948
  %call17 = call i32 @FT_Get_Char_Index(ptr noundef %27, i64 noundef %conv16), !dbg !949
  store i32 %call17, ptr %glyph_index, align 4, !dbg !950
  %29 = load i32, ptr %glyph_index, align 4, !dbg !951
  store i32 %29, ptr %retval, align 4, !dbg !952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !952

if.else18:                                        ; preds = %if.else11
  store i32 0, ptr %retval, align 4, !dbg !953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !953

cleanup:                                          ; preds = %if.else18, %if.then13, %if.else, %if.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %glyph_index) #6, !dbg !954
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6, !dbg !954
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #6, !dbg !954
  %30 = load i32, ptr %retval, align 4, !dbg !954
  ret i32 %30, !dbg !954
}

declare !dbg !955 ptr @FontEncName(i32 noundef, ptr noundef) #2

declare !dbg !958 i32 @FT_Get_Name_Index(ptr noundef, ptr noundef) #2

declare !dbg !963 i32 @FontEncRecode(i32 noundef, ptr noundef) #2

declare !dbg !966 i32 @FT_Set_Charmap(ptr noundef, ptr noundef) #2

declare !dbg !969 i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!37}
!llvm.module.flags = !{!85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/FreeType/ftenc.c", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "bcbb3695369ece4a5066c7ff7050f095")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 11)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 17)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 48)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 13)
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !82, globals: !84, splitDebugInlining: false, nameTableKind: None)
!38 = !{!39, !63, !71}
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FT_Encoding_", file: !40, line: 775, baseType: !41, size: 32, elements: !42)
!40 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/freetype.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "2e2364de246ddc2bfb02304e982d7089")
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!43 = !DIEnumerator(name: "FT_ENCODING_NONE", value: 0)
!44 = !DIEnumerator(name: "FT_ENCODING_MS_SYMBOL", value: 1937337698)
!45 = !DIEnumerator(name: "FT_ENCODING_UNICODE", value: 1970170211)
!46 = !DIEnumerator(name: "FT_ENCODING_SJIS", value: 1936353651)
!47 = !DIEnumerator(name: "FT_ENCODING_PRC", value: 1734484000)
!48 = !DIEnumerator(name: "FT_ENCODING_BIG5", value: 1651074869)
!49 = !DIEnumerator(name: "FT_ENCODING_WANSUNG", value: 2002873971)
!50 = !DIEnumerator(name: "FT_ENCODING_JOHAB", value: 1785686113)
!51 = !DIEnumerator(name: "FT_ENCODING_GB2312", value: 1734484000)
!52 = !DIEnumerator(name: "FT_ENCODING_MS_SJIS", value: 1936353651)
!53 = !DIEnumerator(name: "FT_ENCODING_MS_GB2312", value: 1734484000)
!54 = !DIEnumerator(name: "FT_ENCODING_MS_BIG5", value: 1651074869)
!55 = !DIEnumerator(name: "FT_ENCODING_MS_WANSUNG", value: 2002873971)
!56 = !DIEnumerator(name: "FT_ENCODING_MS_JOHAB", value: 1785686113)
!57 = !DIEnumerator(name: "FT_ENCODING_ADOBE_STANDARD", value: 1094995778)
!58 = !DIEnumerator(name: "FT_ENCODING_ADOBE_EXPERT", value: 1094992453)
!59 = !DIEnumerator(name: "FT_ENCODING_ADOBE_CUSTOM", value: 1094992451)
!60 = !DIEnumerator(name: "FT_ENCODING_ADOBE_LATIN_1", value: 1818326065)
!61 = !DIEnumerator(name: "FT_ENCODING_OLD_LATIN_2", value: 1818326066)
!62 = !DIEnumerator(name: "FT_ENCODING_APPLE_ROMAN", value: 1634889070)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FT_Glyph_Format_", file: !64, line: 745, baseType: !41, size: 32, elements: !65)
!64 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/ftimage.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "cab593a63b806d3836ad07da681d8347")
!65 = !{!66, !67, !68, !69, !70}
!66 = !DIEnumerator(name: "FT_GLYPH_FORMAT_NONE", value: 0)
!67 = !DIEnumerator(name: "FT_GLYPH_FORMAT_COMPOSITE", value: 1668246896)
!68 = !DIEnumerator(name: "FT_GLYPH_FORMAT_BITMAP", value: 1651078259)
!69 = !DIEnumerator(name: "FT_GLYPH_FORMAT_OUTLINE", value: 1869968492)
!70 = !DIEnumerator(name: "FT_GLYPH_FORMAT_PLOTTER", value: 1886154612)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "FT_Sfnt_Tag_", file: !72, line: 620, baseType: !41, size: 32, elements: !73)
!72 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/tttables.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "a4c1ffb337087b2a0a273a41fad02e37")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81}
!74 = !DIEnumerator(name: "FT_SFNT_HEAD", value: 0)
!75 = !DIEnumerator(name: "FT_SFNT_MAXP", value: 1)
!76 = !DIEnumerator(name: "FT_SFNT_OS2", value: 2)
!77 = !DIEnumerator(name: "FT_SFNT_HHEA", value: 3)
!78 = !DIEnumerator(name: "FT_SFNT_VHEA", value: 4)
!79 = !DIEnumerator(name: "FT_SFNT_POST", value: 5)
!80 = !DIEnumerator(name: "FT_SFNT_PCLT", value: 6)
!81 = !DIEnumerator(name: "FT_SFNT_MAX", value: 7)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !{!0, !7, !12, !17, !22, !27, !32}
!85 = !{i32 7, !"Dwarf Version", i32 5}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = !{i32 8, !"PIC Level", i32 2}
!89 = !{i32 7, !"uwtable", i32 2}
!90 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!91 = distinct !DISubprogram(name: "FTPickMapping", scope: !2, file: !2, line: 64, type: !92, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !384)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !95, !94, !95, !96, !344}
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Face", file: !40, line: 512, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_FaceRec_", file: !40, line: 1063, size: 1984, elements: !99)
!99 = !{!100, !104, !105, !106, !107, !108, !111, !112, !114, !127, !128, !141, !151, !159, !160, !161, !162, !163, !164, !165, !166, !167, !246, !269, !270, !274, !296, !325, !338, !339, !340}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "num_faces", scope: !98, file: !40, line: 1065, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Long", file: !102, line: 242, baseType: !103)
!102 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/fttypes.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "42a7b2840fe5cdec3124d3bf9a9cd98d")
!103 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "face_index", scope: !98, file: !40, line: 1066, baseType: !101, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "face_flags", scope: !98, file: !40, line: 1068, baseType: !101, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "style_flags", scope: !98, file: !40, line: 1069, baseType: !101, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "num_glyphs", scope: !98, file: !40, line: 1071, baseType: !101, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "family_name", scope: !98, file: !40, line: 1073, baseType: !109, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_String", file: !102, line: 187, baseType: !4)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style_name", scope: !98, file: !40, line: 1074, baseType: !109, size: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "num_fixed_sizes", scope: !98, file: !40, line: 1076, baseType: !113, size: 32, offset: 448)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Int", file: !102, line: 220, baseType: !94)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "available_sizes", scope: !98, file: !40, line: 1077, baseType: !115, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Bitmap_Size", file: !40, line: 394, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Bitmap_Size_", file: !40, line: 384, size: 256, elements: !118)
!118 = !{!119, !122, !123, !125, !126}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !117, file: !40, line: 386, baseType: !120, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Short", file: !102, line: 198, baseType: !121)
!121 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !117, file: !40, line: 387, baseType: !120, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !117, file: !40, line: 389, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Pos", file: !64, line: 52, baseType: !103)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "x_ppem", scope: !117, file: !40, line: 391, baseType: !124, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "y_ppem", scope: !117, file: !40, line: 392, baseType: !124, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "num_charmaps", scope: !98, file: !40, line: 1079, baseType: !113, size: 32, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "charmaps", scope: !98, file: !40, line: 1080, baseType: !129, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_CharMap", file: !40, line: 595, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_CharMapRec_", file: !40, line: 852, size: 128, elements: !133)
!133 = !{!134, !135, !137, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !132, file: !40, line: 854, baseType: !96, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !132, file: !40, line: 855, baseType: !136, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Encoding", file: !40, line: 805, baseType: !39)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !132, file: !40, line: 856, baseType: !138, size: 16, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_UShort", file: !102, line: 209, baseType: !139)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "encoding_id", scope: !132, file: !40, line: 857, baseType: !138, size: 16, offset: 112)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !98, file: !40, line: 1082, baseType: !142, size: 128, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Generic", file: !102, line: 472, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Generic_", file: !102, line: 467, size: 128, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !143, file: !102, line: 469, baseType: !83, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "finalizer", scope: !143, file: !102, line: 470, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Generic_Finalizer", file: !102, line: 435, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !83}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !98, file: !40, line: 1087, baseType: !152, size: 256, offset: 832)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_BBox", file: !64, line: 118, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_BBox_", file: !64, line: 113, size: 256, elements: !154)
!154 = !{!155, !156, !157, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "xMin", scope: !153, file: !64, line: 115, baseType: !124, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "yMin", scope: !153, file: !64, line: 115, baseType: !124, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "xMax", scope: !153, file: !64, line: 116, baseType: !124, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "yMax", scope: !153, file: !64, line: 116, baseType: !124, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "units_per_EM", scope: !98, file: !40, line: 1089, baseType: !138, size: 16, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ascender", scope: !98, file: !40, line: 1090, baseType: !120, size: 16, offset: 1104)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "descender", scope: !98, file: !40, line: 1091, baseType: !120, size: 16, offset: 1120)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !98, file: !40, line: 1092, baseType: !120, size: 16, offset: 1136)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "max_advance_width", scope: !98, file: !40, line: 1094, baseType: !120, size: 16, offset: 1152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "max_advance_height", scope: !98, file: !40, line: 1095, baseType: !120, size: 16, offset: 1168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "underline_position", scope: !98, file: !40, line: 1097, baseType: !120, size: 16, offset: 1184)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "underline_thickness", scope: !98, file: !40, line: 1098, baseType: !120, size: 16, offset: 1200)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "glyph", scope: !98, file: !40, line: 1100, baseType: !168, size: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_GlyphSlot", file: !40, line: 561, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_GlyphSlotRec_", file: !40, line: 1906, size: 2432, elements: !171)
!171 = !{!172, !176, !177, !178, !180, !181, !193, !195, !196, !202, !204, !218, !219, !220, !232, !233, !237, !238, !239, !240, !241, !242}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "library", scope: !170, file: !40, line: 1908, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Library", file: !40, line: 428, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "FT_LibraryRec_", file: !40, line: 428, flags: DIFlagFwdDecl)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !170, file: !40, line: 1909, baseType: !96, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !40, line: 1910, baseType: !168, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "glyph_index", scope: !170, file: !40, line: 1911, baseType: !179, size: 32, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_UInt", file: !102, line: 231, baseType: !41)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !170, file: !40, line: 1912, baseType: !142, size: 128, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !170, file: !40, line: 1914, baseType: !182, size: 512, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Glyph_Metrics", file: !40, line: 342, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Glyph_Metrics_", file: !40, line: 329, size: 512, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !183, file: !40, line: 331, baseType: !124, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !183, file: !40, line: 332, baseType: !124, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "horiBearingX", scope: !183, file: !40, line: 334, baseType: !124, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "horiBearingY", scope: !183, file: !40, line: 335, baseType: !124, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "horiAdvance", scope: !183, file: !40, line: 336, baseType: !124, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "vertBearingX", scope: !183, file: !40, line: 338, baseType: !124, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "vertBearingY", scope: !183, file: !40, line: 339, baseType: !124, size: 64, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "vertAdvance", scope: !183, file: !40, line: 340, baseType: !124, size: 64, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "linearHoriAdvance", scope: !170, file: !40, line: 1915, baseType: !194, size: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Fixed", file: !102, line: 287, baseType: !103)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "linearVertAdvance", scope: !170, file: !40, line: 1916, baseType: !194, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "advance", scope: !170, file: !40, line: 1917, baseType: !197, size: 128, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Vector", file: !64, line: 75, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Vector_", file: !64, line: 70, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !198, file: !64, line: 72, baseType: !124, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !198, file: !64, line: 73, baseType: !124, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !170, file: !40, line: 1919, baseType: !203, size: 32, offset: 1152)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Glyph_Format", file: !64, line: 754, baseType: !63)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !170, file: !40, line: 1921, baseType: !205, size: 320, offset: 1216)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Bitmap", file: !64, line: 271, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Bitmap_", file: !64, line: 260, size: 320, elements: !207)
!207 = !{!208, !209, !210, !211, !214, !215, !216, !217}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !206, file: !64, line: 262, baseType: !41, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !206, file: !64, line: 263, baseType: !41, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !206, file: !64, line: 264, baseType: !94, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !206, file: !64, line: 265, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "num_grays", scope: !206, file: !64, line: 266, baseType: !139, size: 16, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_mode", scope: !206, file: !64, line: 267, baseType: !213, size: 8, offset: 208)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "palette_mode", scope: !206, file: !64, line: 268, baseType: !213, size: 8, offset: 216)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "palette", scope: !206, file: !64, line: 269, baseType: !83, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_left", scope: !170, file: !40, line: 1922, baseType: !113, size: 32, offset: 1536)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_top", scope: !170, file: !40, line: 1923, baseType: !113, size: 32, offset: 1568)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "outline", scope: !170, file: !40, line: 1925, baseType: !221, size: 320, offset: 1600)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Outline", file: !64, line: 347, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Outline_", file: !64, line: 336, size: 320, elements: !223)
!223 = !{!224, !225, !226, !228, !229, !231}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "n_contours", scope: !222, file: !64, line: 338, baseType: !121, size: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "n_points", scope: !222, file: !64, line: 339, baseType: !121, size: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "points", scope: !222, file: !64, line: 341, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !222, file: !64, line: 342, baseType: !95, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "contours", scope: !222, file: !64, line: 343, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !64, line: 345, baseType: !94, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "num_subglyphs", scope: !170, file: !40, line: 1927, baseType: !179, size: 32, offset: 1920)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "subglyphs", scope: !170, file: !40, line: 1928, baseType: !234, size: 64, offset: 1984)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_SubGlyph", file: !40, line: 1693, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "FT_SubGlyphRec_", file: !40, line: 1693, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "control_data", scope: !170, file: !40, line: 1930, baseType: !83, size: 64, offset: 2048)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "control_len", scope: !170, file: !40, line: 1931, baseType: !103, size: 64, offset: 2112)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "lsb_delta", scope: !170, file: !40, line: 1933, baseType: !124, size: 64, offset: 2176)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rsb_delta", scope: !170, file: !40, line: 1934, baseType: !124, size: 64, offset: 2240)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !170, file: !40, line: 1936, baseType: !83, size: 64, offset: 2304)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !170, file: !40, line: 1938, baseType: !243, size: 64, offset: 2368)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Slot_Internal", file: !40, line: 1705, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Slot_InternalRec_", file: !40, line: 1705, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !98, file: !40, line: 1101, baseType: !247, size: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Size", file: !40, line: 542, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_SizeRec_", file: !40, line: 1667, size: 704, elements: !250)
!250 = !{!251, !252, !253, !265}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !249, file: !40, line: 1669, baseType: !96, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !249, file: !40, line: 1670, baseType: !142, size: 128, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !249, file: !40, line: 1671, baseType: !254, size: 448, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Size_Metrics", file: !40, line: 1643, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Size_Metrics_", file: !40, line: 1630, size: 448, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "x_ppem", scope: !255, file: !40, line: 1632, baseType: !138, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "y_ppem", scope: !255, file: !40, line: 1633, baseType: !138, size: 16, offset: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "x_scale", scope: !255, file: !40, line: 1635, baseType: !194, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "y_scale", scope: !255, file: !40, line: 1636, baseType: !194, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ascender", scope: !255, file: !40, line: 1638, baseType: !124, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "descender", scope: !255, file: !40, line: 1639, baseType: !124, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !255, file: !40, line: 1640, baseType: !124, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_advance", scope: !255, file: !40, line: 1641, baseType: !124, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !249, file: !40, line: 1672, baseType: !266, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Size_Internal", file: !40, line: 1523, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Size_InternalRec_", file: !40, line: 1523, flags: DIFlagFwdDecl)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "charmap", scope: !98, file: !40, line: 1102, baseType: !130, size: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !98, file: !40, line: 1106, baseType: !271, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Driver", file: !40, line: 460, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "FT_DriverRec_", file: !40, line: 460, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !98, file: !40, line: 1107, baseType: !275, size: 64, offset: 1472)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Memory", file: !276, line: 64, baseType: !277)
!276 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/ftsystem.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "a38cdab0dfaf29637f5eb31802b29298")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_MemoryRec_", file: !276, line: 169, size: 256, elements: !279)
!279 = !{!280, !281, !286, !291}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !278, file: !276, line: 171, baseType: !83, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !278, file: !276, line: 172, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Alloc_Func", file: !276, line: 87, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!83, !275, !103}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !278, file: !276, line: 173, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Free_Func", file: !276, line: 108, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !275, !83}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !278, file: !276, line: 174, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Realloc_Func", file: !276, line: 141, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!83, !275, !103, !103, !83}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !98, file: !40, line: 1108, baseType: !297, size: 64, offset: 1536)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Stream", file: !276, line: 198, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_StreamRec_", file: !276, line: 327, size: 640, elements: !300)
!300 = !{!301, !302, !304, !305, !311, !312, !317, !322, !323, !324}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !299, file: !276, line: 329, baseType: !212, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !299, file: !276, line: 330, baseType: !303, size: 64, offset: 64)
!303 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !299, file: !276, line: 331, baseType: !303, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !299, file: !276, line: 333, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_StreamDesc", file: !276, line: 216, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FT_StreamDesc_", file: !276, line: 211, size: 64, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !276, line: 213, baseType: !103, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !307, file: !276, line: 214, baseType: !83, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pathname", scope: !299, file: !276, line: 334, baseType: !306, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !299, file: !276, line: 335, baseType: !313, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Stream_IoFunc", file: !276, line: 249, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!303, !297, !303, !212, !303}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !299, file: !276, line: 336, baseType: !318, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Stream_CloseFunc", file: !276, line: 269, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !297}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !299, file: !276, line: 338, baseType: !275, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !299, file: !276, line: 339, baseType: !212, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !299, file: !276, line: 340, baseType: !212, size: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sizes_list", scope: !98, file: !40, line: 1110, baseType: !326, size: 128, offset: 1600)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_ListRec", file: !102, line: 584, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_ListRec_", file: !102, line: 579, size: 128, elements: !328)
!328 = !{!329, !337}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !327, file: !102, line: 581, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_ListNode", file: !102, line: 522, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FT_ListNodeRec_", file: !102, line: 554, size: 192, elements: !333)
!333 = !{!334, !335, !336}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !332, file: !102, line: 556, baseType: !330, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !102, line: 557, baseType: !330, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !332, file: !102, line: 558, baseType: !83, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !327, file: !102, line: 582, baseType: !330, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "autohint", scope: !98, file: !40, line: 1112, baseType: !142, size: 128, offset: 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !98, file: !40, line: 1113, baseType: !83, size: 64, offset: 1856)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !98, file: !40, line: 1115, baseType: !341, size: 64, offset: 1920)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Face_Internal", file: !40, line: 883, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "FT_Face_InternalRec_", file: !40, line: 883, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "FTMappingPtr", file: !345, line: 69, baseType: !346)
!345 = !DIFile(filename: "src/FreeType/ft.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "87ea5d07799bc4e1f86f196da8a8da24")
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FTMapping", file: !345, line: 63, size: 256, elements: !348)
!348 = !{!349, !350, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !347, file: !345, line: 65, baseType: !94, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !347, file: !345, line: 66, baseType: !130, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !347, file: !345, line: 67, baseType: !94, size: 32, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !347, file: !345, line: 68, baseType: !353, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontMap", file: !355, line: 49, size: 448, elements: !356)
!355 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/libfontenc-1.1.7-duv2prnznvlcph6i77gcmwftruwmtha6/include/X11/fonts/fontenc.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "7ca3884dc79402e972917e6d23340e85")
!356 = !{!357, !358, !359, !360, !364, !368, !369, !370}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !354, file: !355, line: 50, baseType: !94, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !354, file: !355, line: 51, baseType: !94, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !354, file: !355, line: 51, baseType: !94, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "recode", scope: !354, file: !355, line: 52, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!41, !41, !83}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !355, line: 53, baseType: !365, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!95, !41, !83}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !354, file: !355, line: 54, baseType: !83, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 55, baseType: !353, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !354, file: !355, line: 58, baseType: !371, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FontEnc", file: !355, line: 65, size: 384, elements: !373)
!373 = !{!374, !375, !377, !378, !379, !381, !382, !383}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !355, line: 66, baseType: !95, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aliases", scope: !372, file: !355, line: 67, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !372, file: !355, line: 68, baseType: !94, size: 32, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "row_size", scope: !372, file: !355, line: 69, baseType: !94, size: 32, offset: 160)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mappings", scope: !372, file: !355, line: 70, baseType: !380, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontMapPtr", file: !355, line: 59, baseType: !353)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !372, file: !355, line: 71, baseType: !371, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !372, file: !355, line: 74, baseType: !94, size: 32, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "first_col", scope: !372, file: !355, line: 75, baseType: !94, size: 32, offset: 352)
!384 = !{!385, !386, !387, !388, !389, !390, !392, !393, !394, !395, !396, !399, !400, !401, !405, !464}
!385 = !DILocalVariable(name: "xlfd", arg: 1, scope: !91, file: !2, line: 64, type: !95)
!386 = !DILocalVariable(name: "length", arg: 2, scope: !91, file: !2, line: 64, type: !94)
!387 = !DILocalVariable(name: "filename", arg: 3, scope: !91, file: !2, line: 64, type: !95)
!388 = !DILocalVariable(name: "face", arg: 4, scope: !91, file: !2, line: 64, type: !96)
!389 = !DILocalVariable(name: "tm", arg: 5, scope: !91, file: !2, line: 65, type: !344)
!390 = !DILocalVariable(name: "encoding", scope: !91, file: !2, line: 67, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FontEncPtr", file: !355, line: 76, baseType: !371)
!392 = !DILocalVariable(name: "mapping", scope: !91, file: !2, line: 68, type: !380)
!393 = !DILocalVariable(name: "cmap", scope: !91, file: !2, line: 69, type: !130)
!394 = !DILocalVariable(name: "ftrc", scope: !91, file: !2, line: 70, type: !94)
!395 = !DILocalVariable(name: "symbol", scope: !91, file: !2, line: 71, type: !94)
!396 = !DILocalVariable(name: "enc", scope: !91, file: !2, line: 72, type: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!399 = !DILocalVariable(name: "reg", scope: !91, file: !2, line: 72, type: !397)
!400 = !DILocalVariable(name: "encoding_name", scope: !91, file: !2, line: 73, type: !397)
!401 = !DILocalVariable(name: "buf", scope: !91, file: !2, line: 74, type: !402)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 20)
!405 = !DILocalVariable(name: "os2", scope: !406, file: !2, line: 134, type: !413)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 131, column: 24)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 131, column: 16)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 128, column: 30)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 127, column: 12)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 126, column: 73)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 126, column: 5)
!412 = distinct !DILexicalBlock(scope: !91, file: !2, line: 126, column: 5)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "TT_OS2", file: !72, line: 430, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "TT_OS2_", file: !72, line: 375, size: 1088, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !436, !438, !439, !440, !441, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !415, file: !72, line: 377, baseType: !138, size: 16)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "xAvgCharWidth", scope: !415, file: !72, line: 378, baseType: !120, size: 16, offset: 16)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "usWeightClass", scope: !415, file: !72, line: 379, baseType: !138, size: 16, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "usWidthClass", scope: !415, file: !72, line: 380, baseType: !138, size: 16, offset: 48)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fsType", scope: !415, file: !72, line: 381, baseType: !138, size: 16, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ySubscriptXSize", scope: !415, file: !72, line: 382, baseType: !120, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ySubscriptYSize", scope: !415, file: !72, line: 383, baseType: !120, size: 16, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ySubscriptXOffset", scope: !415, file: !72, line: 384, baseType: !120, size: 16, offset: 112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "ySubscriptYOffset", scope: !415, file: !72, line: 385, baseType: !120, size: 16, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ySuperscriptXSize", scope: !415, file: !72, line: 386, baseType: !120, size: 16, offset: 144)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ySuperscriptYSize", scope: !415, file: !72, line: 387, baseType: !120, size: 16, offset: 160)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ySuperscriptXOffset", scope: !415, file: !72, line: 388, baseType: !120, size: 16, offset: 176)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ySuperscriptYOffset", scope: !415, file: !72, line: 389, baseType: !120, size: 16, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "yStrikeoutSize", scope: !415, file: !72, line: 390, baseType: !120, size: 16, offset: 208)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "yStrikeoutPosition", scope: !415, file: !72, line: 391, baseType: !120, size: 16, offset: 224)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sFamilyClass", scope: !415, file: !72, line: 392, baseType: !120, size: 16, offset: 240)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "panose", scope: !415, file: !72, line: 394, baseType: !434, size: 80, offset: 256)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 80, elements: !5)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Byte", file: !102, line: 154, baseType: !213)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ulUnicodeRange1", scope: !415, file: !72, line: 396, baseType: !437, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_ULong", file: !102, line: 253, baseType: !303)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ulUnicodeRange2", scope: !415, file: !72, line: 397, baseType: !437, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ulUnicodeRange3", scope: !415, file: !72, line: 398, baseType: !437, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ulUnicodeRange4", scope: !415, file: !72, line: 399, baseType: !437, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "achVendID", scope: !415, file: !72, line: 401, baseType: !442, size: 32, offset: 640)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 32, elements: !445)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Char", file: !102, line: 143, baseType: !444)
!444 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!445 = !{!446}
!446 = !DISubrange(count: 4)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "fsSelection", scope: !415, file: !72, line: 403, baseType: !138, size: 16, offset: 672)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "usFirstCharIndex", scope: !415, file: !72, line: 404, baseType: !138, size: 16, offset: 688)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usLastCharIndex", scope: !415, file: !72, line: 405, baseType: !138, size: 16, offset: 704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sTypoAscender", scope: !415, file: !72, line: 406, baseType: !120, size: 16, offset: 720)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sTypoDescender", scope: !415, file: !72, line: 407, baseType: !120, size: 16, offset: 736)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sTypoLineGap", scope: !415, file: !72, line: 408, baseType: !120, size: 16, offset: 752)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "usWinAscent", scope: !415, file: !72, line: 409, baseType: !138, size: 16, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "usWinDescent", scope: !415, file: !72, line: 410, baseType: !138, size: 16, offset: 784)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ulCodePageRange1", scope: !415, file: !72, line: 414, baseType: !437, size: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ulCodePageRange2", scope: !415, file: !72, line: 415, baseType: !437, size: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sxHeight", scope: !415, file: !72, line: 419, baseType: !120, size: 16, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sCapHeight", scope: !415, file: !72, line: 420, baseType: !120, size: 16, offset: 976)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "usDefaultChar", scope: !415, file: !72, line: 421, baseType: !138, size: 16, offset: 992)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "usBreakChar", scope: !415, file: !72, line: 422, baseType: !138, size: 16, offset: 1008)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "usMaxContext", scope: !415, file: !72, line: 423, baseType: !138, size: 16, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "usLowerOpticalPointSize", scope: !415, file: !72, line: 427, baseType: !138, size: 16, offset: 1040)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "usUpperOpticalPointSize", scope: !415, file: !72, line: 428, baseType: !138, size: 16, offset: 1056)
!464 = !DILabel(scope: !91, name: "native", file: !2, line: 149)
!465 = !DILocation(line: 64, column: 21, scope: !91)
!466 = !DILocation(line: 64, column: 31, scope: !91)
!467 = !DILocation(line: 64, column: 45, scope: !91)
!468 = !DILocation(line: 64, column: 63, scope: !91)
!469 = !DILocation(line: 65, column: 28, scope: !91)
!470 = !DILocation(line: 67, column: 5, scope: !91)
!471 = !DILocation(line: 67, column: 16, scope: !91)
!472 = !DILocation(line: 68, column: 5, scope: !91)
!473 = !DILocation(line: 68, column: 16, scope: !91)
!474 = !DILocation(line: 69, column: 5, scope: !91)
!475 = !DILocation(line: 69, column: 16, scope: !91)
!476 = !DILocation(line: 70, column: 5, scope: !91)
!477 = !DILocation(line: 70, column: 9, scope: !91)
!478 = !DILocation(line: 71, column: 5, scope: !91)
!479 = !DILocation(line: 71, column: 9, scope: !91)
!480 = !DILocation(line: 72, column: 5, scope: !91)
!481 = !DILocation(line: 72, column: 17, scope: !91)
!482 = !DILocation(line: 72, column: 23, scope: !91)
!483 = !DILocation(line: 73, column: 5, scope: !91)
!484 = !DILocation(line: 73, column: 17, scope: !91)
!485 = !DILocation(line: 74, column: 5, scope: !91)
!486 = !DILocation(line: 74, column: 10, scope: !91)
!487 = !DILocation(line: 76, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !91, file: !2, line: 76, column: 8)
!489 = !DILocation(line: 76, column: 8, scope: !91)
!490 = !DILocation(line: 77, column: 39, scope: !488)
!491 = !DILocation(line: 77, column: 45, scope: !488)
!492 = !DILocation(line: 77, column: 23, scope: !488)
!493 = !DILocation(line: 77, column: 21, scope: !488)
!494 = !DILocation(line: 77, column: 7, scope: !488)
!495 = !DILocation(line: 78, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !91, file: !2, line: 78, column: 8)
!497 = !DILocation(line: 78, column: 8, scope: !91)
!498 = !DILocation(line: 79, column: 23, scope: !496)
!499 = !DILocation(line: 79, column: 9, scope: !496)
!500 = !DILocation(line: 81, column: 32, scope: !91)
!501 = !DILocation(line: 81, column: 14, scope: !91)
!502 = !DILocation(line: 81, column: 12, scope: !91)
!503 = !DILocation(line: 84, column: 34, scope: !91)
!504 = !DILocation(line: 84, column: 12, scope: !91)
!505 = !DILocation(line: 84, column: 10, scope: !91)
!506 = !DILocation(line: 88, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !91, file: !2, line: 88, column: 8)
!508 = !DILocation(line: 88, column: 13, scope: !507)
!509 = !DILocation(line: 88, column: 8, scope: !91)
!510 = !DILocation(line: 91, column: 19, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 91, column: 12)
!512 = distinct !DILexicalBlock(scope: !507, file: !2, line: 88, column: 19)
!513 = !DILocation(line: 91, column: 12, scope: !511)
!514 = !DILocation(line: 91, column: 33, scope: !511)
!515 = !DILocation(line: 91, column: 26, scope: !511)
!516 = !DILocation(line: 91, column: 24, scope: !511)
!517 = !DILocation(line: 91, column: 38, scope: !511)
!518 = !DILocation(line: 91, column: 12, scope: !512)
!519 = !DILocation(line: 92, column: 13, scope: !511)
!520 = !DILocation(line: 93, column: 18, scope: !512)
!521 = !DILocation(line: 93, column: 45, scope: !512)
!522 = !DILocation(line: 93, column: 50, scope: !512)
!523 = !DILocation(line: 93, column: 9, scope: !512)
!524 = !DILocation(line: 94, column: 27, scope: !512)
!525 = !DILocation(line: 94, column: 32, scope: !512)
!526 = !DILocation(line: 94, column: 9, scope: !512)
!527 = !DILocation(line: 95, column: 23, scope: !528)
!528 = distinct !DILexicalBlock(scope: !512, file: !2, line: 95, column: 12)
!529 = !DILocation(line: 95, column: 12, scope: !528)
!530 = !DILocation(line: 95, column: 42, scope: !528)
!531 = !DILocation(line: 95, column: 12, scope: !512)
!532 = !DILocation(line: 96, column: 27, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 96, column: 16)
!534 = distinct !DILexicalBlock(scope: !528, file: !2, line: 95, column: 48)
!535 = !DILocation(line: 96, column: 32, scope: !533)
!536 = !DILocation(line: 96, column: 16, scope: !533)
!537 = !DILocation(line: 96, column: 47, scope: !533)
!538 = !DILocation(line: 96, column: 16, scope: !534)
!539 = !DILocation(line: 97, column: 17, scope: !533)
!540 = !DILocation(line: 98, column: 13, scope: !534)
!541 = !DILocation(line: 100, column: 5, scope: !512)
!542 = !DILocation(line: 100, column: 15, scope: !543)
!543 = distinct !DILexicalBlock(scope: !507, file: !2, line: 100, column: 15)
!544 = !DILocation(line: 100, column: 15, scope: !507)
!545 = !DILocation(line: 101, column: 34, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !2, line: 100, column: 23)
!547 = !DILocation(line: 101, column: 16, scope: !546)
!548 = !DILocation(line: 101, column: 14, scope: !546)
!549 = !DILocation(line: 102, column: 12, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !2, line: 102, column: 12)
!551 = !DILocation(line: 102, column: 17, scope: !550)
!552 = !DILocation(line: 102, column: 12, scope: !546)
!553 = !DILocation(line: 103, column: 13, scope: !550)
!554 = !DILocation(line: 104, column: 5, scope: !546)
!555 = !DILocation(line: 106, column: 28, scope: !91)
!556 = !DILocation(line: 106, column: 43, scope: !91)
!557 = !DILocation(line: 106, column: 16, scope: !91)
!558 = !DILocation(line: 106, column: 14, scope: !91)
!559 = !DILocation(line: 107, column: 8, scope: !560)
!560 = distinct !DILexicalBlock(scope: !91, file: !2, line: 107, column: 8)
!561 = !DILocation(line: 107, column: 15, scope: !560)
!562 = !DILocation(line: 107, column: 18, scope: !560)
!563 = !DILocation(line: 107, column: 27, scope: !560)
!564 = !DILocation(line: 107, column: 8, scope: !91)
!565 = !DILocation(line: 108, column: 52, scope: !560)
!566 = !DILocation(line: 108, column: 20, scope: !560)
!567 = !DILocation(line: 108, column: 18, scope: !560)
!568 = !DILocation(line: 108, column: 9, scope: !560)
!569 = !DILocation(line: 109, column: 8, scope: !570)
!570 = distinct !DILexicalBlock(scope: !91, file: !2, line: 109, column: 8)
!571 = !DILocation(line: 109, column: 17, scope: !570)
!572 = !DILocation(line: 109, column: 8, scope: !91)
!573 = !DILocation(line: 111, column: 16, scope: !574)
!574 = distinct !DILexicalBlock(scope: !570, file: !2, line: 109, column: 26)
!575 = !DILocation(line: 111, column: 31, scope: !574)
!576 = !DILocation(line: 110, column: 9, scope: !574)
!577 = !DILocation(line: 112, column: 9, scope: !574)
!578 = !DILocation(line: 115, column: 30, scope: !579)
!579 = distinct !DILexicalBlock(scope: !91, file: !2, line: 115, column: 8)
!580 = !DILocation(line: 115, column: 8, scope: !579)
!581 = !DILocation(line: 115, column: 8, scope: !91)
!582 = !DILocation(line: 116, column: 23, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 116, column: 9)
!584 = distinct !DILexicalBlock(scope: !579, file: !2, line: 115, column: 37)
!585 = !DILocation(line: 116, column: 33, scope: !583)
!586 = !DILocation(line: 116, column: 21, scope: !583)
!587 = !DILocation(line: 116, column: 13, scope: !583)
!588 = !DILocation(line: 116, column: 43, scope: !589)
!589 = distinct !DILexicalBlock(scope: !583, file: !2, line: 116, column: 9)
!590 = !DILocation(line: 116, column: 9, scope: !583)
!591 = !DILocation(line: 117, column: 16, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !2, line: 117, column: 16)
!593 = distinct !DILexicalBlock(scope: !589, file: !2, line: 116, column: 77)
!594 = !DILocation(line: 117, column: 25, scope: !592)
!595 = !DILocation(line: 117, column: 30, scope: !592)
!596 = !DILocation(line: 117, column: 16, scope: !593)
!597 = !DILocation(line: 118, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !592, file: !2, line: 117, column: 59)
!599 = !DILocation(line: 118, column: 21, scope: !598)
!600 = !DILocation(line: 118, column: 27, scope: !598)
!601 = !DILocation(line: 119, column: 17, scope: !598)
!602 = !DILocation(line: 119, column: 21, scope: !598)
!603 = !DILocation(line: 119, column: 26, scope: !598)
!604 = !DILocation(line: 120, column: 31, scope: !598)
!605 = !DILocation(line: 120, column: 17, scope: !598)
!606 = !DILocation(line: 120, column: 21, scope: !598)
!607 = !DILocation(line: 120, column: 29, scope: !598)
!608 = !DILocation(line: 121, column: 17, scope: !598)
!609 = !DILocation(line: 123, column: 9, scope: !593)
!610 = !DILocation(line: 116, column: 62, scope: !589)
!611 = !DILocation(line: 116, column: 71, scope: !589)
!612 = !DILocation(line: 116, column: 60, scope: !589)
!613 = !DILocation(line: 116, column: 9, scope: !589)
!614 = distinct !{!614, !590, !615, !616}
!615 = !DILocation(line: 123, column: 9, scope: !583)
!616 = !{!"llvm.loop.mustprogress"}
!617 = !DILocation(line: 124, column: 5, scope: !584)
!618 = !DILocation(line: 126, column: 19, scope: !412)
!619 = !DILocation(line: 126, column: 29, scope: !412)
!620 = !DILocation(line: 126, column: 17, scope: !412)
!621 = !DILocation(line: 126, column: 9, scope: !412)
!622 = !DILocation(line: 126, column: 39, scope: !411)
!623 = !DILocation(line: 126, column: 5, scope: !412)
!624 = !DILocation(line: 127, column: 22, scope: !409)
!625 = !DILocation(line: 127, column: 31, scope: !409)
!626 = !DILocation(line: 127, column: 37, scope: !409)
!627 = !DILocation(line: 127, column: 46, scope: !409)
!628 = !DILocation(line: 127, column: 51, scope: !409)
!629 = !DILocation(line: 127, column: 60, scope: !409)
!630 = !DILocation(line: 127, column: 65, scope: !409)
!631 = !DILocation(line: 127, column: 12, scope: !409)
!632 = !DILocation(line: 127, column: 12, scope: !410)
!633 = !DILocation(line: 129, column: 13, scope: !408)
!634 = !DILocation(line: 129, column: 17, scope: !408)
!635 = !DILocation(line: 129, column: 23, scope: !408)
!636 = !DILocation(line: 130, column: 24, scope: !408)
!637 = !DILocation(line: 130, column: 13, scope: !408)
!638 = !DILocation(line: 130, column: 17, scope: !408)
!639 = !DILocation(line: 130, column: 22, scope: !408)
!640 = !DILocation(line: 131, column: 16, scope: !407)
!641 = !DILocation(line: 131, column: 16, scope: !408)
!642 = !DILocation(line: 134, column: 17, scope: !406)
!643 = !DILocation(line: 134, column: 25, scope: !406)
!644 = !DILocation(line: 135, column: 41, scope: !406)
!645 = !DILocation(line: 135, column: 23, scope: !406)
!646 = !DILocation(line: 135, column: 21, scope: !406)
!647 = !DILocation(line: 136, column: 20, scope: !648)
!648 = distinct !DILexicalBlock(scope: !406, file: !2, line: 136, column: 20)
!649 = !DILocation(line: 136, column: 20, scope: !406)
!650 = !DILocation(line: 137, column: 32, scope: !648)
!651 = !DILocation(line: 137, column: 37, scope: !648)
!652 = !DILocation(line: 137, column: 54, scope: !648)
!653 = !DILocation(line: 137, column: 21, scope: !648)
!654 = !DILocation(line: 137, column: 25, scope: !648)
!655 = !DILocation(line: 137, column: 30, scope: !648)
!656 = !DILocation(line: 139, column: 21, scope: !648)
!657 = !DILocation(line: 139, column: 25, scope: !648)
!658 = !DILocation(line: 139, column: 30, scope: !648)
!659 = !DILocation(line: 140, column: 13, scope: !407)
!660 = !DILocation(line: 140, column: 13, scope: !406)
!661 = !DILocation(line: 141, column: 17, scope: !407)
!662 = !DILocation(line: 141, column: 21, scope: !407)
!663 = !DILocation(line: 141, column: 26, scope: !407)
!664 = !DILocation(line: 142, column: 27, scope: !408)
!665 = !DILocation(line: 142, column: 13, scope: !408)
!666 = !DILocation(line: 142, column: 17, scope: !408)
!667 = !DILocation(line: 142, column: 25, scope: !408)
!668 = !DILocation(line: 143, column: 13, scope: !408)
!669 = !DILocation(line: 145, column: 5, scope: !410)
!670 = !DILocation(line: 126, column: 58, scope: !411)
!671 = !DILocation(line: 126, column: 67, scope: !411)
!672 = !DILocation(line: 126, column: 56, scope: !411)
!673 = !DILocation(line: 126, column: 5, scope: !411)
!674 = distinct !{!674, !623, !675, !616}
!675 = !DILocation(line: 145, column: 5, scope: !412)
!676 = !DILocation(line: 147, column: 5, scope: !91)
!677 = !DILocation(line: 149, column: 3, scope: !91)
!678 = !DILocation(line: 150, column: 5, scope: !91)
!679 = !DILocation(line: 150, column: 9, scope: !91)
!680 = !DILocation(line: 150, column: 15, scope: !91)
!681 = !DILocation(line: 151, column: 16, scope: !91)
!682 = !DILocation(line: 151, column: 22, scope: !91)
!683 = !DILocation(line: 151, column: 5, scope: !91)
!684 = !DILocation(line: 151, column: 9, scope: !91)
!685 = !DILocation(line: 151, column: 14, scope: !91)
!686 = !DILocation(line: 152, column: 5, scope: !91)
!687 = !DILocation(line: 152, column: 9, scope: !91)
!688 = !DILocation(line: 152, column: 14, scope: !91)
!689 = !DILocation(line: 153, column: 5, scope: !91)
!690 = !DILocation(line: 153, column: 9, scope: !91)
!691 = !DILocation(line: 153, column: 17, scope: !91)
!692 = !DILocation(line: 154, column: 5, scope: !91)
!693 = !DILocation(line: 155, column: 1, scope: !91)
!694 = !DISubprogram(name: "FontEncFromXLFD", scope: !355, file: !355, line: 88, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DISubroutineType(types: !696)
!696 = !{!95, !397, !94}
!697 = distinct !DISubprogram(name: "FTEncFontSpecific", scope: !2, file: !2, line: 47, type: !698, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!94, !397}
!700 = !{!701, !702}
!701 = !DILocalVariable(name: "encoding", arg: 1, scope: !697, file: !2, line: 47, type: !397)
!702 = !DILocalVariable(name: "p", scope: !697, file: !2, line: 49, type: !397)
!703 = !DILocation(line: 47, column: 31, scope: !697)
!704 = !DILocation(line: 49, column: 5, scope: !697)
!705 = !DILocation(line: 49, column: 17, scope: !697)
!706 = !DILocation(line: 49, column: 21, scope: !697)
!707 = !DILocation(line: 51, column: 19, scope: !708)
!708 = distinct !DILexicalBlock(scope: !697, file: !2, line: 51, column: 8)
!709 = !DILocation(line: 51, column: 8, scope: !708)
!710 = !DILocation(line: 51, column: 49, scope: !708)
!711 = !DILocation(line: 51, column: 8, scope: !697)
!712 = !DILocation(line: 52, column: 9, scope: !708)
!713 = !DILocation(line: 54, column: 5, scope: !697)
!714 = !DILocation(line: 54, column: 12, scope: !697)
!715 = !DILocation(line: 54, column: 11, scope: !697)
!716 = !DILocation(line: 54, column: 14, scope: !697)
!717 = !DILocation(line: 55, column: 13, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 55, column: 12)
!719 = distinct !DILexicalBlock(scope: !697, file: !2, line: 54, column: 22)
!720 = !DILocation(line: 55, column: 12, scope: !718)
!721 = !DILocation(line: 55, column: 15, scope: !718)
!722 = !DILocation(line: 55, column: 12, scope: !719)
!723 = !DILocation(line: 56, column: 13, scope: !718)
!724 = !DILocation(line: 57, column: 10, scope: !719)
!725 = distinct !{!725, !713, !726, !616}
!726 = !DILocation(line: 58, column: 5, scope: !697)
!727 = !DILocation(line: 59, column: 6, scope: !697)
!728 = !DILocation(line: 60, column: 24, scope: !697)
!729 = !DILocation(line: 60, column: 13, scope: !697)
!730 = !DILocation(line: 60, column: 43, scope: !697)
!731 = !DILocation(line: 60, column: 5, scope: !697)
!732 = !DILocation(line: 61, column: 1, scope: !697)
!733 = !DISubprogram(name: "FT_Get_BDF_Charset_ID", scope: !734, file: !734, line: 157, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/ftbdf.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "b138820174b253130ad3fd0d16e61fcc")
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !96, !738, !738}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Error", file: !102, line: 299, baseType: !94)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!739 = !DISubprogram(name: "strlen", scope: !740, file: !740, line: 407, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!740 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!741 = !DISubroutineType(types: !742)
!742 = !{!303, !397}
!743 = !DISubprogram(name: "snprintf", scope: !744, file: !744, line: 378, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!744 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!745 = !DISubroutineType(types: !746)
!746 = !{!94, !747, !748, !750, null}
!747 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !749, line: 70, baseType: !303)
!749 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!750 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !397)
!751 = !DISubprogram(name: "__libxfont__ErrorF", scope: !752, file: !752, line: 66, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!752 = !DIFile(filename: "./include/libxfontint.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build/aidengro/spack-stage-libxfont2-2.0.6-hvuqeosdye26hqi7nikcloa25oti4t3f/spack-src", checksumkind: CSK_MD5, checksum: "261861acd0561faa7e64022616b9b915")
!753 = !DISubroutineType(types: !754)
!754 = !{null, !397, null}
!755 = !DISubprogram(name: "strcasecmp", scope: !756, file: !756, line: 116, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!757 = !DISubroutineType(types: !758)
!758 = !{!94, !397, !397}
!759 = !DISubprogram(name: "FT_Select_Charmap", scope: !40, file: !40, line: 3755, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DISubroutineType(types: !761)
!761 = !{!737, !96, !136}
!762 = !DISubprogram(name: "FontEncFind", scope: !355, file: !355, line: 93, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubroutineType(types: !764)
!764 = !{!391, !397, !397}
!765 = !DISubprogram(name: "FT_Has_PS_Glyph_Names", scope: !766, file: !766, line: 475, type: !767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/freetype-2.11.1-xvbwukrut2ugtlgn3w5o4kj7nubpabwg/include/freetype2/freetype/t1tables.h", directory: "/local-ssd/libxfont2-hvuqeosdye26hqi7nikcloa25oti4t3f-build", checksumkind: CSK_MD5, checksum: "b25ac49263e6b61c2f06bf3d903adbf8")
!767 = !DISubroutineType(types: !768)
!768 = !{!113, !96}
!769 = distinct !DISubprogram(name: "find_cmap", scope: !2, file: !2, line: 158, type: !770, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{!94, !94, !94, !94, !96, !129}
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780}
!773 = !DILocalVariable(name: "type", arg: 1, scope: !769, file: !2, line: 158, type: !94)
!774 = !DILocalVariable(name: "pid", arg: 2, scope: !769, file: !2, line: 158, type: !94)
!775 = !DILocalVariable(name: "eid", arg: 3, scope: !769, file: !2, line: 158, type: !94)
!776 = !DILocalVariable(name: "face", arg: 4, scope: !769, file: !2, line: 158, type: !96)
!777 = !DILocalVariable(name: "cmap_return", arg: 5, scope: !769, file: !2, line: 158, type: !129)
!778 = !DILocalVariable(name: "i", scope: !769, file: !2, line: 160, type: !94)
!779 = !DILocalVariable(name: "n", scope: !769, file: !2, line: 160, type: !94)
!780 = !DILocalVariable(name: "cmap", scope: !769, file: !2, line: 161, type: !130)
!781 = !DILocation(line: 158, column: 15, scope: !769)
!782 = !DILocation(line: 158, column: 25, scope: !769)
!783 = !DILocation(line: 158, column: 34, scope: !769)
!784 = !DILocation(line: 158, column: 47, scope: !769)
!785 = !DILocation(line: 158, column: 65, scope: !769)
!786 = !DILocation(line: 160, column: 5, scope: !769)
!787 = !DILocation(line: 160, column: 9, scope: !769)
!788 = !DILocation(line: 160, column: 12, scope: !769)
!789 = !DILocation(line: 161, column: 5, scope: !769)
!790 = !DILocation(line: 161, column: 16, scope: !769)
!791 = !DILocation(line: 163, column: 9, scope: !769)
!792 = !DILocation(line: 163, column: 15, scope: !769)
!793 = !DILocation(line: 163, column: 7, scope: !769)
!794 = !DILocation(line: 165, column: 12, scope: !769)
!795 = !DILocation(line: 165, column: 5, scope: !769)
!796 = !DILocation(line: 167, column: 14, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !2, line: 167, column: 9)
!798 = distinct !DILexicalBlock(scope: !769, file: !2, line: 165, column: 18)
!799 = !DILocation(line: 167, column: 13, scope: !797)
!800 = !DILocation(line: 167, column: 18, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !2, line: 167, column: 9)
!802 = !DILocation(line: 167, column: 20, scope: !801)
!803 = !DILocation(line: 167, column: 19, scope: !801)
!804 = !DILocation(line: 167, column: 9, scope: !797)
!805 = !DILocation(line: 168, column: 20, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !2, line: 167, column: 28)
!807 = !DILocation(line: 168, column: 26, scope: !806)
!808 = !DILocation(line: 168, column: 35, scope: !806)
!809 = !DILocation(line: 168, column: 18, scope: !806)
!810 = !DILocation(line: 169, column: 16, scope: !811)
!811 = distinct !DILexicalBlock(scope: !806, file: !2, line: 169, column: 16)
!812 = !DILocation(line: 169, column: 22, scope: !811)
!813 = !DILocation(line: 169, column: 37, scope: !811)
!814 = !DILocation(line: 169, column: 34, scope: !811)
!815 = !DILocation(line: 169, column: 41, scope: !811)
!816 = !DILocation(line: 169, column: 44, scope: !811)
!817 = !DILocation(line: 169, column: 50, scope: !811)
!818 = !DILocation(line: 169, column: 65, scope: !811)
!819 = !DILocation(line: 169, column: 62, scope: !811)
!820 = !DILocation(line: 169, column: 16, scope: !806)
!821 = !DILocation(line: 170, column: 32, scope: !822)
!822 = distinct !DILexicalBlock(scope: !811, file: !2, line: 169, column: 70)
!823 = !DILocation(line: 170, column: 18, scope: !822)
!824 = !DILocation(line: 170, column: 30, scope: !822)
!825 = !DILocation(line: 171, column: 17, scope: !822)
!826 = !DILocation(line: 173, column: 9, scope: !806)
!827 = !DILocation(line: 167, column: 24, scope: !801)
!828 = !DILocation(line: 167, column: 9, scope: !801)
!829 = distinct !{!829, !804, !830, !616}
!830 = !DILocation(line: 173, column: 9, scope: !797)
!831 = !DILocation(line: 174, column: 9, scope: !798)
!832 = !DILocation(line: 177, column: 14, scope: !833)
!833 = distinct !DILexicalBlock(scope: !798, file: !2, line: 177, column: 9)
!834 = !DILocation(line: 177, column: 13, scope: !833)
!835 = !DILocation(line: 177, column: 18, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !2, line: 177, column: 9)
!837 = !DILocation(line: 177, column: 20, scope: !836)
!838 = !DILocation(line: 177, column: 19, scope: !836)
!839 = !DILocation(line: 177, column: 9, scope: !833)
!840 = !DILocation(line: 178, column: 20, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !2, line: 177, column: 28)
!842 = !DILocation(line: 178, column: 26, scope: !841)
!843 = !DILocation(line: 178, column: 35, scope: !841)
!844 = !DILocation(line: 178, column: 18, scope: !841)
!845 = !DILocation(line: 179, column: 16, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !2, line: 179, column: 16)
!847 = !DILocation(line: 179, column: 22, scope: !846)
!848 = !DILocation(line: 179, column: 34, scope: !846)
!849 = !DILocation(line: 179, column: 59, scope: !846)
!850 = !DILocation(line: 180, column: 16, scope: !846)
!851 = !DILocation(line: 180, column: 22, scope: !846)
!852 = !DILocation(line: 180, column: 34, scope: !846)
!853 = !DILocation(line: 179, column: 16, scope: !841)
!854 = !DILocation(line: 181, column: 32, scope: !855)
!855 = distinct !DILexicalBlock(scope: !846, file: !2, line: 180, column: 58)
!856 = !DILocation(line: 181, column: 18, scope: !855)
!857 = !DILocation(line: 181, column: 30, scope: !855)
!858 = !DILocation(line: 182, column: 17, scope: !855)
!859 = !DILocation(line: 184, column: 9, scope: !841)
!860 = !DILocation(line: 177, column: 24, scope: !836)
!861 = !DILocation(line: 177, column: 9, scope: !836)
!862 = distinct !{!862, !839, !863, !616}
!863 = !DILocation(line: 184, column: 9, scope: !833)
!864 = !DILocation(line: 185, column: 9, scope: !798)
!865 = !DILocation(line: 204, column: 9, scope: !798)
!866 = !DILocation(line: 206, column: 5, scope: !769)
!867 = !DILocation(line: 207, column: 1, scope: !769)
!868 = !DISubprogram(name: "FT_Get_Sfnt_Table", scope: !72, file: !72, line: 686, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DISubroutineType(types: !870)
!870 = !{!83, !96, !871}
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "FT_Sfnt_Tag", file: !72, line: 632, baseType: !71)
!872 = distinct !DISubprogram(name: "FTRemap", scope: !2, file: !2, line: 210, type: !873, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{!41, !96, !344, !41}
!875 = !{!876, !877, !878, !879, !880, !881}
!876 = !DILocalVariable(name: "face", arg: 1, scope: !872, file: !2, line: 210, type: !96)
!877 = !DILocalVariable(name: "tm", arg: 2, scope: !872, file: !2, line: 210, type: !344)
!878 = !DILocalVariable(name: "code", arg: 3, scope: !872, file: !2, line: 210, type: !41)
!879 = !DILocalVariable(name: "index", scope: !872, file: !2, line: 212, type: !41)
!880 = !DILocalVariable(name: "name", scope: !872, file: !2, line: 213, type: !95)
!881 = !DILocalVariable(name: "glyph_index", scope: !872, file: !2, line: 214, type: !41)
!882 = !DILocation(line: 210, column: 17, scope: !872)
!883 = !DILocation(line: 210, column: 36, scope: !872)
!884 = !DILocation(line: 210, column: 49, scope: !872)
!885 = !DILocation(line: 212, column: 5, scope: !872)
!886 = !DILocation(line: 212, column: 14, scope: !872)
!887 = !DILocation(line: 213, column: 5, scope: !872)
!888 = !DILocation(line: 213, column: 11, scope: !872)
!889 = !DILocation(line: 214, column: 5, scope: !872)
!890 = !DILocation(line: 214, column: 14, scope: !872)
!891 = !DILocation(line: 216, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !872, file: !2, line: 216, column: 8)
!893 = !DILocation(line: 216, column: 12, scope: !892)
!894 = !DILocation(line: 216, column: 8, scope: !872)
!895 = !DILocation(line: 217, column: 12, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 217, column: 12)
!897 = distinct !DILexicalBlock(scope: !892, file: !2, line: 216, column: 21)
!898 = !DILocation(line: 217, column: 16, scope: !896)
!899 = !DILocation(line: 217, column: 12, scope: !897)
!900 = !DILocation(line: 218, column: 32, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !2, line: 217, column: 23)
!902 = !DILocation(line: 218, column: 38, scope: !901)
!903 = !DILocation(line: 218, column: 42, scope: !901)
!904 = !DILocation(line: 218, column: 20, scope: !901)
!905 = !DILocation(line: 218, column: 18, scope: !901)
!906 = !DILocation(line: 219, column: 17, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !2, line: 219, column: 16)
!908 = !DILocation(line: 219, column: 16, scope: !901)
!909 = !DILocation(line: 220, column: 17, scope: !907)
!910 = !DILocation(line: 221, column: 45, scope: !901)
!911 = !DILocation(line: 221, column: 51, scope: !901)
!912 = !DILocation(line: 221, column: 27, scope: !901)
!913 = !DILocation(line: 221, column: 25, scope: !901)
!914 = !DILocation(line: 222, column: 20, scope: !901)
!915 = !DILocation(line: 222, column: 13, scope: !901)
!916 = !DILocation(line: 224, column: 35, scope: !917)
!917 = distinct !DILexicalBlock(scope: !896, file: !2, line: 223, column: 16)
!918 = !DILocation(line: 224, column: 41, scope: !917)
!919 = !DILocation(line: 224, column: 45, scope: !917)
!920 = !DILocation(line: 224, column: 21, scope: !917)
!921 = !DILocation(line: 224, column: 56, scope: !917)
!922 = !DILocation(line: 224, column: 60, scope: !917)
!923 = !DILocation(line: 224, column: 54, scope: !917)
!924 = !DILocation(line: 224, column: 19, scope: !917)
!925 = !DILocation(line: 225, column: 28, scope: !917)
!926 = !DILocation(line: 225, column: 34, scope: !917)
!927 = !DILocation(line: 225, column: 38, scope: !917)
!928 = !DILocation(line: 225, column: 13, scope: !917)
!929 = !DILocation(line: 226, column: 45, scope: !917)
!930 = !DILocation(line: 226, column: 51, scope: !917)
!931 = !DILocation(line: 226, column: 27, scope: !917)
!932 = !DILocation(line: 226, column: 25, scope: !917)
!933 = !DILocation(line: 227, column: 20, scope: !917)
!934 = !DILocation(line: 227, column: 13, scope: !917)
!935 = !DILocation(line: 230, column: 12, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !2, line: 230, column: 12)
!937 = distinct !DILexicalBlock(scope: !892, file: !2, line: 229, column: 12)
!938 = !DILocation(line: 230, column: 17, scope: !936)
!939 = !DILocation(line: 230, column: 12, scope: !937)
!940 = !DILocation(line: 231, column: 21, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !2, line: 230, column: 26)
!942 = !DILocation(line: 231, column: 19, scope: !941)
!943 = !DILocation(line: 232, column: 28, scope: !941)
!944 = !DILocation(line: 232, column: 34, scope: !941)
!945 = !DILocation(line: 232, column: 38, scope: !941)
!946 = !DILocation(line: 232, column: 13, scope: !941)
!947 = !DILocation(line: 233, column: 45, scope: !941)
!948 = !DILocation(line: 233, column: 51, scope: !941)
!949 = !DILocation(line: 233, column: 27, scope: !941)
!950 = !DILocation(line: 233, column: 25, scope: !941)
!951 = !DILocation(line: 234, column: 20, scope: !941)
!952 = !DILocation(line: 234, column: 13, scope: !941)
!953 = !DILocation(line: 236, column: 13, scope: !936)
!954 = !DILocation(line: 238, column: 1, scope: !872)
!955 = !DISubprogram(name: "FontEncName", scope: !355, file: !355, line: 108, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubroutineType(types: !957)
!957 = !{!95, !41, !380}
!958 = !DISubprogram(name: "FT_Get_Name_Index", scope: !40, file: !40, line: 4057, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{!179, !96, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!963 = !DISubprogram(name: "FontEncRecode", scope: !355, file: !355, line: 105, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!41, !41, !380}
!966 = !DISubprogram(name: "FT_Set_Charmap", scope: !40, file: !40, line: 3786, type: !967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubroutineType(types: !968)
!968 = !{!737, !96, !130}
!969 = !DISubprogram(name: "FT_Get_Char_Index", scope: !40, file: !40, line: 3843, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!970 = !DISubroutineType(types: !971)
!971 = !{!179, !96, !437}
