; ModuleID = 'samples/922.bc'
source_filename = "dattinq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NC = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.NC_Dispatch = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define i32 @nc_inq_att(i32 noundef %ncid, i32 noundef %varid, ptr noundef %name, ptr noundef %xtypep, ptr noundef %lenp) #0 {
entry:
  %retval = alloca i32, align 4
  %ncid.addr = alloca i32, align 4
  %varid.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %xtypep.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ncp = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncid, ptr %ncid.addr, align 4
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %xtypep, ptr %xtypep.addr, align 8
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #3
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @NC_check_id(i32 noundef %0, ptr noundef %ncp)
  store i32 %call, ptr %stat, align 4
  %1 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ncp, align 8
  %dispatch = getelementptr inbounds %struct.NC, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %dispatch, align 8
  %inq_att = getelementptr inbounds %struct.NC_Dispatch, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %inq_att, align 8
  %6 = load i32, ptr %ncid.addr, align 4
  %7 = load i32, ptr %varid.addr, align 4
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %xtypep.addr, align 8
  %10 = load ptr, ptr %lenp.addr, align 8
  %call1 = call i32 %5(i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncp) #3
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @NC_check_id(i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @nc_inq_attid(i32 noundef %ncid, i32 noundef %varid, ptr noundef %name, ptr noundef %idp) #0 {
entry:
  %retval = alloca i32, align 4
  %ncid.addr = alloca i32, align 4
  %varid.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %idp.addr = alloca ptr, align 8
  %ncp = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncid, ptr %ncid.addr, align 4
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %idp, ptr %idp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #3
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @NC_check_id(i32 noundef %0, ptr noundef %ncp)
  store i32 %call, ptr %stat, align 4
  %1 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ncp, align 8
  %dispatch = getelementptr inbounds %struct.NC, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %dispatch, align 8
  %inq_attid = getelementptr inbounds %struct.NC_Dispatch, ptr %4, i32 0, i32 20
  %5 = load ptr, ptr %inq_attid, align 8
  %6 = load i32, ptr %ncid.addr, align 4
  %7 = load i32, ptr %varid.addr, align 4
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %idp.addr, align 8
  %call1 = call i32 %5(i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncp) #3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @nc_inq_attname(i32 noundef %ncid, i32 noundef %varid, i32 noundef %attnum, ptr noundef %name) #0 {
entry:
  %retval = alloca i32, align 4
  %ncid.addr = alloca i32, align 4
  %varid.addr = alloca i32, align 4
  %attnum.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %ncp = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncid, ptr %ncid.addr, align 4
  store i32 %varid, ptr %varid.addr, align 4
  store i32 %attnum, ptr %attnum.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #3
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @NC_check_id(i32 noundef %0, ptr noundef %ncp)
  store i32 %call, ptr %stat, align 4
  %1 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ncp, align 8
  %dispatch = getelementptr inbounds %struct.NC, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %dispatch, align 8
  %inq_attname = getelementptr inbounds %struct.NC_Dispatch, ptr %4, i32 0, i32 21
  %5 = load ptr, ptr %inq_attname, align 8
  %6 = load i32, ptr %ncid.addr, align 4
  %7 = load i32, ptr %varid.addr, align 4
  %8 = load i32, ptr %attnum.addr, align 4
  %9 = load ptr, ptr %name.addr, align 8
  %call1 = call i32 %5(i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncp) #3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @nc_inq_natts(i32 noundef %ncid, ptr noundef %nattsp) #0 {
entry:
  %retval = alloca i32, align 4
  %ncid.addr = alloca i32, align 4
  %nattsp.addr = alloca ptr, align 8
  %ncp = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncid, ptr %ncid.addr, align 4
  store ptr %nattsp, ptr %nattsp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #3
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @NC_check_id(i32 noundef %0, ptr noundef %ncp)
  store i32 %call, ptr %stat, align 4
  %1 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %nattsp.addr, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %ncp, align 8
  %dispatch = getelementptr inbounds %struct.NC, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %dispatch, align 8
  %inq = getelementptr inbounds %struct.NC_Dispatch, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %inq, align 8
  %7 = load i32, ptr %ncid.addr, align 4
  %8 = load ptr, ptr %nattsp.addr, align 8
  %call4 = call i32 %6(i32 noundef %7, ptr noundef null, ptr noundef null, ptr noundef %8, ptr noundef null)
  store i32 %call4, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncp) #3
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @nc_inq_atttype(i32 noundef %ncid, i32 noundef %varid, ptr noundef %name, ptr noundef %xtypep) #0 {
entry:
  %retval = alloca i32, align 4
  %ncid.addr = alloca i32, align 4
  %varid.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %xtypep.addr = alloca ptr, align 8
  %ncp = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncid, ptr %ncid.addr, align 4
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %xtypep, ptr %xtypep.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #3
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @NC_check_id(i32 noundef %0, ptr noundef %ncp)
  store i32 %call, ptr %stat, align 4
  %1 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ncp, align 8
  %dispatch = getelementptr inbounds %struct.NC, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %dispatch, align 8
  %inq_att = getelementptr inbounds %struct.NC_Dispatch, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %inq_att, align 8
  %6 = load i32, ptr %ncid.addr, align 4
  %7 = load i32, ptr %varid.addr, align 4
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %xtypep.addr, align 8
  %call1 = call i32 %5(i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncp) #3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @nc_inq_attlen(i32 noundef %ncid, i32 noundef %varid, ptr noundef %name, ptr noundef %lenp) #0 {
entry:
  %retval = alloca i32, align 4
  %ncid.addr = alloca i32, align 4
  %varid.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ncp = alloca ptr, align 8
  %stat = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %ncid, ptr %ncid.addr, align 4
  store i32 %varid, ptr %varid.addr, align 4
  store ptr %name, ptr %name.addr, align 8
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %stat) #3
  %0 = load i32, ptr %ncid.addr, align 4
  %call = call i32 @NC_check_id(i32 noundef %0, ptr noundef %ncp)
  store i32 %call, ptr %stat, align 4
  %1 = load i32, ptr %stat, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %stat, align 4
  store i32 %2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ncp, align 8
  %dispatch = getelementptr inbounds %struct.NC, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %dispatch, align 8
  %inq_att = getelementptr inbounds %struct.NC_Dispatch, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %inq_att, align 8
  %6 = load i32, ptr %ncid.addr, align 4
  %7 = load i32, ptr %varid.addr, align 4
  %8 = load ptr, ptr %name.addr, align 8
  %9 = load ptr, ptr %lenp.addr, align 8
  %call1 = call i32 %5(i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef null, ptr noundef %9)
  store i32 %call1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %stat) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncp) #3
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
