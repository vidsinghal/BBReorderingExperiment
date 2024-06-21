; ModuleID = 'samples/47.bc'
source_filename = "../Cholesky/cholmod_postorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cholmod_common_struct = type { double, double, double, i64, i64, double, i32, i32, i32, i32, i32, i32, i32, [3 x double], [3 x i64], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, [10 x %struct.cholmod_method_struct], i32, i32, double, double, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i32, i32, double, double, double, double, i64, i64, i64, double, double, double, double, double, i32, i32, double, double, i32, i32, double, double, double, double, double, double, double, [10 x i64], i32, i64, double, i64, double, i64, i32, ptr, [8 x ptr], [3 x ptr], ptr, [8 x ptr], ptr, i64, ptr, i64, i64, i32, double, double, double, double, double, double, double, double, double, double, double, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cholmod_method_struct = type { double, double, double, double, double, [4 x double], i64, [4 x i64], i32, i32, i32, i32, i32, i32, [4 x i64] }

@.str = private unnamed_addr constant [32 x i8] c"../Cholesky/cholmod_postorder.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"argument missing\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"problem too large\00", align 1

; Function Attrs: uwtable
define i64 @cholmod_postorder(ptr noundef %Parent, i64 noundef %n, ptr noundef %Weight, ptr noundef %Post, ptr noundef %Common) #0 {
entry:
  %retval = alloca i64, align 8
  %Parent.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %Weight.addr = alloca ptr, align 8
  %Post.addr = alloca ptr, align 8
  %Common.addr = alloca ptr, align 8
  %Head = alloca ptr, align 8
  %Next = alloca ptr, align 8
  %Pstack = alloca ptr, align 8
  %Iwork = alloca ptr, align 8
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca i32, align 4
  %nextj = alloca i32, align 4
  %s = alloca i64, align 8
  %ok = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %Whead = alloca ptr, align 8
  store ptr %Parent, ptr %Parent.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !8
  store ptr %Weight, ptr %Weight.addr, align 8, !tbaa !4
  store ptr %Post, ptr %Post.addr, align 8, !tbaa !4
  store ptr %Common, ptr %Common.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Head) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Next) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Pstack) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Iwork) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ok) #4
  store i32 1, ptr %ok, align 4, !tbaa !10
  %0 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %itype = getelementptr inbounds %struct.cholmod_common_struct, ptr %1, i32 0, i32 40
  %2 = load i32, ptr %itype, align 8, !tbaa !12
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %dtype = getelementptr inbounds %struct.cholmod_common_struct, ptr %3, i32 0, i32 41
  %4 = load i32, ptr %dtype, align 4, !tbaa !15
  %cmp2 = icmp ne i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status = getelementptr inbounds %struct.cholmod_common_struct, ptr %5, i32 0, i32 43
  store i32 -4, ptr %status, align 4, !tbaa !16
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %Parent.addr, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status7 = getelementptr inbounds %struct.cholmod_common_struct, ptr %7, i32 0, i32 43
  %8 = load i32, ptr %status7, align 4, !tbaa !16
  %cmp8 = icmp ne i32 %8, -2
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  %9 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call = call i32 @cholmod_error(i32 noundef -4, ptr noundef @.str, i32 noundef 160, ptr noundef @.str.1, ptr noundef %9)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %10 = load ptr, ptr %Post.addr, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %10, null
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end11
  %11 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status14 = getelementptr inbounds %struct.cholmod_common_struct, ptr %11, i32 0, i32 43
  %12 = load i32, ptr %status14, align 4, !tbaa !16
  %cmp15 = icmp ne i32 %12, -2
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %13 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call17 = call i32 @cholmod_error(i32 noundef -4, ptr noundef @.str, i32 noundef 161, ptr noundef @.str.1, ptr noundef %13)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then13
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %14 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status20 = getelementptr inbounds %struct.cholmod_common_struct, ptr %14, i32 0, i32 43
  store i32 0, ptr %status20, align 4, !tbaa !16
  %15 = load i64, ptr %n.addr, align 8, !tbaa !8
  %call21 = call i64 @cholmod_mult_size_t(i64 noundef %15, i64 noundef 2, ptr noundef %ok)
  store i64 %call21, ptr %s, align 8, !tbaa !8
  %16 = load i32, ptr %ok, align 4, !tbaa !10
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end19
  %17 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call23 = call i32 @cholmod_error(i32 noundef -3, ptr noundef @.str, i32 noundef 172, ptr noundef @.str.2, ptr noundef %17)
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %18 = load i64, ptr %n.addr, align 8, !tbaa !8
  %19 = load i64, ptr %s, align 8, !tbaa !8
  %20 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %call25 = call i32 @cholmod_allocate_work(i64 noundef %18, i64 noundef %19, i64 noundef 0, ptr noundef %20)
  %21 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %status26 = getelementptr inbounds %struct.cholmod_common_struct, ptr %21, i32 0, i32 43
  %22 = load i32, ptr %status26, align 4, !tbaa !16
  %cmp27 = icmp slt i32 %22, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i64 -1, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %23 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %Head30 = getelementptr inbounds %struct.cholmod_common_struct, ptr %23, i32 0, i32 37
  %24 = load ptr, ptr %Head30, align 8, !tbaa !17
  store ptr %24, ptr %Head, align 8, !tbaa !4
  %25 = load ptr, ptr %Common.addr, align 8, !tbaa !4
  %Iwork31 = getelementptr inbounds %struct.cholmod_common_struct, ptr %25, i32 0, i32 39
  %26 = load ptr, ptr %Iwork31, align 8, !tbaa !18
  store ptr %26, ptr %Iwork, align 8, !tbaa !4
  %27 = load ptr, ptr %Iwork, align 8, !tbaa !4
  store ptr %27, ptr %Next, align 8, !tbaa !4
  %28 = load ptr, ptr %Iwork, align 8, !tbaa !4
  %29 = load i64, ptr %n.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i32, ptr %28, i64 %29
  store ptr %add.ptr, ptr %Pstack, align 8, !tbaa !4
  %30 = load ptr, ptr %Weight.addr, align 8, !tbaa !4
  %cmp32 = icmp eq ptr %30, null
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end29
  %31 = load i64, ptr %n.addr, align 8, !tbaa !8
  %sub = sub i64 %31, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %j, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then33
  %32 = load i32, ptr %j, align 4, !tbaa !10
  %cmp34 = icmp sge i32 %32, 0
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %Parent.addr, align 8, !tbaa !4
  %34 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds i32, ptr %33, i64 %idxprom
  %35 = load i32, ptr %arrayidx, align 4, !tbaa !10
  store i32 %35, ptr %p, align 4, !tbaa !10
  %36 = load i32, ptr %p, align 4, !tbaa !10
  %cmp36 = icmp sge i32 %36, 0
  br i1 %cmp36, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %for.body
  %37 = load i32, ptr %p, align 4, !tbaa !10
  %38 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv38 = trunc i64 %38 to i32
  %cmp39 = icmp slt i32 %37, %conv38
  br i1 %cmp39, label %if.then41, label %if.end48

if.then41:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %Head, align 8, !tbaa !4
  %40 = load i32, ptr %p, align 4, !tbaa !10
  %idxprom42 = sext i32 %40 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %39, i64 %idxprom42
  %41 = load i32, ptr %arrayidx43, align 4, !tbaa !10
  %42 = load ptr, ptr %Next, align 8, !tbaa !4
  %43 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %42, i64 %idxprom44
  store i32 %41, ptr %arrayidx45, align 4, !tbaa !10
  %44 = load i32, ptr %j, align 4, !tbaa !10
  %45 = load ptr, ptr %Head, align 8, !tbaa !4
  %46 = load i32, ptr %p, align 4, !tbaa !10
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %45, i64 %idxprom46
  store i32 %44, ptr %arrayidx47, align 4, !tbaa !10
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %47 = load i32, ptr %j, align 4, !tbaa !10
  %dec = add nsw i32 %47, -1
  store i32 %dec, ptr %j, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  br label %if.end123

if.else:                                          ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %Whead) #4
  %48 = load ptr, ptr %Pstack, align 8, !tbaa !4
  store ptr %48, ptr %Whead, align 8, !tbaa !4
  store i32 0, ptr %w, align 4, !tbaa !10
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %if.else
  %49 = load i32, ptr %w, align 4, !tbaa !10
  %50 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv50 = trunc i64 %50 to i32
  %cmp51 = icmp slt i32 %49, %conv50
  br i1 %cmp51, label %for.body53, label %for.end57

for.body53:                                       ; preds = %for.cond49
  %51 = load ptr, ptr %Whead, align 8, !tbaa !4
  %52 = load i32, ptr %w, align 4, !tbaa !10
  %idxprom54 = sext i32 %52 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %51, i64 %idxprom54
  store i32 -1, ptr %arrayidx55, align 4, !tbaa !10
  br label %for.inc56

for.inc56:                                        ; preds = %for.body53
  %53 = load i32, ptr %w, align 4, !tbaa !10
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %w, align 4, !tbaa !10
  br label %for.cond49, !llvm.loop !21

for.end57:                                        ; preds = %for.cond49
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc93, %for.end57
  %54 = load i32, ptr %j, align 4, !tbaa !10
  %55 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv59 = trunc i64 %55 to i32
  %cmp60 = icmp slt i32 %54, %conv59
  br i1 %cmp60, label %for.body62, label %for.end95

for.body62:                                       ; preds = %for.cond58
  %56 = load ptr, ptr %Parent.addr, align 8, !tbaa !4
  %57 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom63 = sext i32 %57 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %56, i64 %idxprom63
  %58 = load i32, ptr %arrayidx64, align 4, !tbaa !10
  store i32 %58, ptr %p, align 4, !tbaa !10
  %59 = load i32, ptr %p, align 4, !tbaa !10
  %cmp65 = icmp sge i32 %59, 0
  br i1 %cmp65, label %land.lhs.true67, label %if.end92

land.lhs.true67:                                  ; preds = %for.body62
  %60 = load i32, ptr %p, align 4, !tbaa !10
  %61 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv68 = trunc i64 %61 to i32
  %cmp69 = icmp slt i32 %60, %conv68
  br i1 %cmp69, label %if.then71, label %if.end92

if.then71:                                        ; preds = %land.lhs.true67
  %62 = load ptr, ptr %Weight.addr, align 8, !tbaa !4
  %63 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom72 = sext i32 %63 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %62, i64 %idxprom72
  %64 = load i32, ptr %arrayidx73, align 4, !tbaa !10
  store i32 %64, ptr %w, align 4, !tbaa !10
  %65 = load i32, ptr %w, align 4, !tbaa !10
  %cmp74 = icmp sgt i32 0, %65
  br i1 %cmp74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then71
  br label %cond.end

cond.false:                                       ; preds = %if.then71
  %66 = load i32, ptr %w, align 4, !tbaa !10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %66, %cond.false ]
  store i32 %cond, ptr %w, align 4, !tbaa !10
  %67 = load i32, ptr %w, align 4, !tbaa !10
  %68 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv76 = trunc i64 %68 to i32
  %sub77 = sub nsw i32 %conv76, 1
  %cmp78 = icmp slt i32 %67, %sub77
  br i1 %cmp78, label %cond.true80, label %cond.false81

cond.true80:                                      ; preds = %cond.end
  %69 = load i32, ptr %w, align 4, !tbaa !10
  br label %cond.end84

cond.false81:                                     ; preds = %cond.end
  %70 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv82 = trunc i64 %70 to i32
  %sub83 = sub nsw i32 %conv82, 1
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false81, %cond.true80
  %cond85 = phi i32 [ %69, %cond.true80 ], [ %sub83, %cond.false81 ]
  store i32 %cond85, ptr %w, align 4, !tbaa !10
  %71 = load ptr, ptr %Whead, align 8, !tbaa !4
  %72 = load i32, ptr %w, align 4, !tbaa !10
  %idxprom86 = sext i32 %72 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %71, i64 %idxprom86
  %73 = load i32, ptr %arrayidx87, align 4, !tbaa !10
  %74 = load ptr, ptr %Next, align 8, !tbaa !4
  %75 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom88 = sext i32 %75 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %74, i64 %idxprom88
  store i32 %73, ptr %arrayidx89, align 4, !tbaa !10
  %76 = load i32, ptr %j, align 4, !tbaa !10
  %77 = load ptr, ptr %Whead, align 8, !tbaa !4
  %78 = load i32, ptr %w, align 4, !tbaa !10
  %idxprom90 = sext i32 %78 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %77, i64 %idxprom90
  store i32 %76, ptr %arrayidx91, align 4, !tbaa !10
  br label %if.end92

if.end92:                                         ; preds = %cond.end84, %land.lhs.true67, %for.body62
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %79 = load i32, ptr %j, align 4, !tbaa !10
  %inc94 = add nsw i32 %79, 1
  store i32 %inc94, ptr %j, align 4, !tbaa !10
  br label %for.cond58, !llvm.loop !22

for.end95:                                        ; preds = %for.cond58
  %80 = load i64, ptr %n.addr, align 8, !tbaa !8
  %sub96 = sub i64 %80, 1
  %conv97 = trunc i64 %sub96 to i32
  store i32 %conv97, ptr %w, align 4, !tbaa !10
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc120, %for.end95
  %81 = load i32, ptr %w, align 4, !tbaa !10
  %cmp99 = icmp sge i32 %81, 0
  br i1 %cmp99, label %for.body101, label %for.end122

for.body101:                                      ; preds = %for.cond98
  %82 = load ptr, ptr %Whead, align 8, !tbaa !4
  %83 = load i32, ptr %w, align 4, !tbaa !10
  %idxprom102 = sext i32 %83 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %82, i64 %idxprom102
  %84 = load i32, ptr %arrayidx103, align 4, !tbaa !10
  store i32 %84, ptr %j, align 4, !tbaa !10
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc118, %for.body101
  %85 = load i32, ptr %j, align 4, !tbaa !10
  %cmp105 = icmp ne i32 %85, -1
  br i1 %cmp105, label %for.body107, label %for.end119

for.body107:                                      ; preds = %for.cond104
  %86 = load ptr, ptr %Next, align 8, !tbaa !4
  %87 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom108 = sext i32 %87 to i64
  %arrayidx109 = getelementptr inbounds i32, ptr %86, i64 %idxprom108
  %88 = load i32, ptr %arrayidx109, align 4, !tbaa !10
  store i32 %88, ptr %nextj, align 4, !tbaa !10
  %89 = load ptr, ptr %Parent.addr, align 8, !tbaa !4
  %90 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom110 = sext i32 %90 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %89, i64 %idxprom110
  %91 = load i32, ptr %arrayidx111, align 4, !tbaa !10
  store i32 %91, ptr %p, align 4, !tbaa !10
  %92 = load ptr, ptr %Head, align 8, !tbaa !4
  %93 = load i32, ptr %p, align 4, !tbaa !10
  %idxprom112 = sext i32 %93 to i64
  %arrayidx113 = getelementptr inbounds i32, ptr %92, i64 %idxprom112
  %94 = load i32, ptr %arrayidx113, align 4, !tbaa !10
  %95 = load ptr, ptr %Next, align 8, !tbaa !4
  %96 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom114 = sext i32 %96 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %95, i64 %idxprom114
  store i32 %94, ptr %arrayidx115, align 4, !tbaa !10
  %97 = load i32, ptr %j, align 4, !tbaa !10
  %98 = load ptr, ptr %Head, align 8, !tbaa !4
  %99 = load i32, ptr %p, align 4, !tbaa !10
  %idxprom116 = sext i32 %99 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %98, i64 %idxprom116
  store i32 %97, ptr %arrayidx117, align 4, !tbaa !10
  br label %for.inc118

for.inc118:                                       ; preds = %for.body107
  %100 = load i32, ptr %nextj, align 4, !tbaa !10
  store i32 %100, ptr %j, align 4, !tbaa !10
  br label %for.cond104, !llvm.loop !23

for.end119:                                       ; preds = %for.cond104
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %101 = load i32, ptr %w, align 4, !tbaa !10
  %dec121 = add nsw i32 %101, -1
  store i32 %dec121, ptr %w, align 4, !tbaa !10
  br label %for.cond98, !llvm.loop !24

for.end122:                                       ; preds = %for.cond98
  call void @llvm.lifetime.end.p0(i64 8, ptr %Whead) #4
  br label %if.end123

if.end123:                                        ; preds = %for.end122, %for.end
  store i32 0, ptr %k, align 4, !tbaa !10
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc136, %if.end123
  %102 = load i32, ptr %j, align 4, !tbaa !10
  %103 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv125 = trunc i64 %103 to i32
  %cmp126 = icmp slt i32 %102, %conv125
  br i1 %cmp126, label %for.body128, label %for.end138

for.body128:                                      ; preds = %for.cond124
  %104 = load ptr, ptr %Parent.addr, align 8, !tbaa !4
  %105 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom129 = sext i32 %105 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %104, i64 %idxprom129
  %106 = load i32, ptr %arrayidx130, align 4, !tbaa !10
  %cmp131 = icmp eq i32 %106, -1
  br i1 %cmp131, label %if.then133, label %if.end135

if.then133:                                       ; preds = %for.body128
  %107 = load i32, ptr %j, align 4, !tbaa !10
  %108 = load i32, ptr %k, align 4, !tbaa !10
  %109 = load ptr, ptr %Post.addr, align 8, !tbaa !4
  %110 = load ptr, ptr %Head, align 8, !tbaa !4
  %111 = load ptr, ptr %Next, align 8, !tbaa !4
  %112 = load ptr, ptr %Pstack, align 8, !tbaa !4
  %call134 = call i32 @dfs(i32 noundef %107, i32 noundef %108, ptr noundef %109, ptr noundef %110, ptr noundef %111, ptr noundef %112)
  store i32 %call134, ptr %k, align 4, !tbaa !10
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %for.body128
  br label %for.inc136

for.inc136:                                       ; preds = %if.end135
  %113 = load i32, ptr %j, align 4, !tbaa !10
  %inc137 = add nsw i32 %113, 1
  store i32 %inc137, ptr %j, align 4, !tbaa !10
  br label %for.cond124, !llvm.loop !25

for.end138:                                       ; preds = %for.cond124
  store i32 0, ptr %j, align 4, !tbaa !10
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc146, %for.end138
  %114 = load i32, ptr %j, align 4, !tbaa !10
  %115 = load i64, ptr %n.addr, align 8, !tbaa !8
  %conv140 = trunc i64 %115 to i32
  %cmp141 = icmp slt i32 %114, %conv140
  br i1 %cmp141, label %for.body143, label %for.end148

for.body143:                                      ; preds = %for.cond139
  %116 = load ptr, ptr %Head, align 8, !tbaa !4
  %117 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom144 = sext i32 %117 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %116, i64 %idxprom144
  store i32 -1, ptr %arrayidx145, align 4, !tbaa !10
  br label %for.inc146

for.inc146:                                       ; preds = %for.body143
  %118 = load i32, ptr %j, align 4, !tbaa !10
  %inc147 = add nsw i32 %118, 1
  store i32 %inc147, ptr %j, align 4, !tbaa !10
  br label %for.cond139, !llvm.loop !26

for.end148:                                       ; preds = %for.cond139
  %119 = load i32, ptr %k, align 4, !tbaa !10
  %conv149 = sext i32 %119 to i64
  store i64 %conv149, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end148, %if.then28, %if.then22, %if.end18, %if.end10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ok) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Iwork) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Pstack) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Head) #4
  %120 = load i64, ptr %retval, align 8
  ret i64 %120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @cholmod_error(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i64 @cholmod_mult_size_t(i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @cholmod_allocate_work(i64 noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @dfs(i32 noundef %p, i32 noundef %k, ptr noundef %Post, ptr noundef %Head, ptr noundef %Next, ptr noundef %Pstack) #3 {
entry:
  %p.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %Post.addr = alloca ptr, align 8
  %Head.addr = alloca ptr, align 8
  %Next.addr = alloca ptr, align 8
  %Pstack.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %phead = alloca i32, align 4
  store i32 %p, ptr %p.addr, align 4, !tbaa !10
  store i32 %k, ptr %k.addr, align 4, !tbaa !10
  store ptr %Post, ptr %Post.addr, align 8, !tbaa !4
  store ptr %Head, ptr %Head.addr, align 8, !tbaa !4
  store ptr %Next, ptr %Next.addr, align 8, !tbaa !4
  store ptr %Pstack, ptr %Pstack.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %phead) #4
  %0 = load i32, ptr %p.addr, align 4, !tbaa !10
  %1 = load ptr, ptr %Pstack.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  store i32 %0, ptr %arrayidx, align 4, !tbaa !10
  store i32 0, ptr %phead, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %phead, align 4, !tbaa !10
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %Pstack.addr, align 8, !tbaa !4
  %4 = load i32, ptr %phead, align 4, !tbaa !10
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  store i32 %5, ptr %p.addr, align 4, !tbaa !10
  %6 = load ptr, ptr %Head.addr, align 8, !tbaa !4
  %7 = load i32, ptr %p.addr, align 4, !tbaa !10
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 %idxprom2
  %8 = load i32, ptr %arrayidx3, align 4, !tbaa !10
  store i32 %8, ptr %j, align 4, !tbaa !10
  %9 = load i32, ptr %j, align 4, !tbaa !10
  %cmp4 = icmp eq i32 %9, -1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %phead, align 4, !tbaa !10
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %phead, align 4, !tbaa !10
  %11 = load i32, ptr %p.addr, align 4, !tbaa !10
  %12 = load ptr, ptr %Post.addr, align 8, !tbaa !4
  %13 = load i32, ptr %k.addr, align 4, !tbaa !10
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %k.addr, align 4, !tbaa !10
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  store i32 %11, ptr %arrayidx6, align 4, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %Next.addr, align 8, !tbaa !4
  %15 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !10
  %17 = load ptr, ptr %Head.addr, align 8, !tbaa !4
  %18 = load i32, ptr %p.addr, align 4, !tbaa !10
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %17, i64 %idxprom9
  store i32 %16, ptr %arrayidx10, align 4, !tbaa !10
  %19 = load i32, ptr %j, align 4, !tbaa !10
  %20 = load ptr, ptr %Pstack.addr, align 8, !tbaa !4
  %21 = load i32, ptr %phead, align 4, !tbaa !10
  %inc11 = add nsw i32 %21, 1
  store i32 %inc11, ptr %phead, align 4, !tbaa !10
  %idxprom12 = sext i32 %inc11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %20, i64 %idxprom12
  store i32 %19, ptr %arrayidx13, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %while.cond
  %22 = load i32, ptr %k.addr, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %phead) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  ret i32 %22
}

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 1960}
!13 = !{!"cholmod_common_struct", !14, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !9, i64 32, !14, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !6, i64 80, !6, i64 104, !11, i64 128, !11, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !5, i64 160, !11, i64 168, !11, i64 172, !11, i64 176, !6, i64 184, !11, i64 1864, !11, i64 1868, !14, i64 1872, !14, i64 1880, !9, i64 1888, !9, i64 1896, !9, i64 1904, !9, i64 1912, !9, i64 1920, !5, i64 1928, !5, i64 1936, !5, i64 1944, !5, i64 1952, !11, i64 1960, !11, i64 1964, !11, i64 1968, !11, i64 1972, !14, i64 1976, !14, i64 1984, !14, i64 1992, !14, i64 2000, !9, i64 2008, !9, i64 2016, !9, i64 2024, !14, i64 2032, !14, i64 2040, !14, i64 2048, !14, i64 2056, !14, i64 2064, !11, i64 2072, !11, i64 2076, !14, i64 2080, !14, i64 2088, !11, i64 2096, !11, i64 2100, !14, i64 2104, !14, i64 2112, !14, i64 2120, !14, i64 2128, !14, i64 2136, !14, i64 2144, !14, i64 2152, !6, i64 2160, !11, i64 2240, !9, i64 2248, !14, i64 2256, !9, i64 2264, !14, i64 2272, !9, i64 2280, !11, i64 2288, !5, i64 2296, !6, i64 2304, !6, i64 2368, !5, i64 2392, !6, i64 2400, !5, i64 2464, !9, i64 2472, !5, i64 2480, !9, i64 2488, !9, i64 2496, !11, i64 2504, !14, i64 2512, !14, i64 2520, !14, i64 2528, !14, i64 2536, !14, i64 2544, !14, i64 2552, !14, i64 2560, !14, i64 2568, !14, i64 2576, !14, i64 2584, !14, i64 2592, !9, i64 2600, !9, i64 2608, !9, i64 2616, !9, i64 2624, !9, i64 2632, !9, i64 2640, !9, i64 2648, !9, i64 2656}
!14 = !{!"double", !6, i64 0}
!15 = !{!13, !11, i64 1964}
!16 = !{!13, !11, i64 1972}
!17 = !{!13, !5, i64 1936}
!18 = !{!13, !5, i64 1952}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
