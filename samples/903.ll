; ModuleID = 'samples/903.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/x8-lut/gen/lut-avx2-x128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_si256 = type { <4 x i64> }
%struct.__storeu_si256 = type { <4 x i64> }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }
%struct.__storeu_si32 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_x8_lut_ukernel__avx2_x128(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 1 dereferenceable(256) %t) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %vt0 = alloca <4 x i64>, align 32
  %vt1 = alloca <4 x i64>, align 32
  %vt2 = alloca <4 x i64>, align 32
  %vt3 = alloca <4 x i64>, align 32
  %vt4 = alloca <4 x i64>, align 32
  %vt5 = alloca <4 x i64>, align 32
  %vt6 = alloca <4 x i64>, align 32
  %vt7 = alloca <4 x i64>, align 32
  %vt8 = alloca <4 x i64>, align 32
  %vt9 = alloca <4 x i64>, align 32
  %vtA = alloca <4 x i64>, align 32
  %vtB = alloca <4 x i64>, align 32
  %vtC = alloca <4 x i64>, align 32
  %vtD = alloca <4 x i64>, align 32
  %vtE = alloca <4 x i64>, align 32
  %vtF = alloca <4 x i64>, align 32
  %vtable0 = alloca <4 x i64>, align 32
  %vtable1 = alloca <4 x i64>, align 32
  %vtable2 = alloca <4 x i64>, align 32
  %vtable3 = alloca <4 x i64>, align 32
  %vtable4 = alloca <4 x i64>, align 32
  %vtable5 = alloca <4 x i64>, align 32
  %vtable6 = alloca <4 x i64>, align 32
  %vtable7 = alloca <4 x i64>, align 32
  %vtable8 = alloca <4 x i64>, align 32
  %vtable9 = alloca <4 x i64>, align 32
  %vtableA = alloca <4 x i64>, align 32
  %vtableB = alloca <4 x i64>, align 32
  %vtableC = alloca <4 x i64>, align 32
  %vtableD = alloca <4 x i64>, align 32
  %vtableE = alloca <4 x i64>, align 32
  %vtableF = alloca <4 x i64>, align 32
  %voffset = alloca <4 x i64>, align 32
  %vx0 = alloca <4 x i64>, align 32
  %vx1 = alloca <4 x i64>, align 32
  %vx2 = alloca <4 x i64>, align 32
  %vx3 = alloca <4 x i64>, align 32
  %vy0 = alloca <4 x i64>, align 32
  %vy1 = alloca <4 x i64>, align 32
  %vy2 = alloca <4 x i64>, align 32
  %vy3 = alloca <4 x i64>, align 32
  %vx = alloca <2 x i64>, align 16
  %vy = alloca <2 x i64>, align 16
  %vx354 = alloca <2 x i64>, align 16
  %vy356 = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !8
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store ptr %t, ptr %t.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt0) #6
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %call = call <2 x i64> @_mm_load_si128(ptr noundef %0)
  %call1 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call)
  store <4 x i64> %call1, ptr %vt0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt1) #6
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 16
  %call2 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr)
  %call3 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call2)
  store <4 x i64> %call3, ptr %vt1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt2) #6
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr4 = getelementptr inbounds i8, ptr %2, i64 32
  %call5 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr4)
  %call6 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call5)
  store <4 x i64> %call6, ptr %vt2, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt3) #6
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr7 = getelementptr inbounds i8, ptr %3, i64 48
  %call8 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr7)
  %call9 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call8)
  store <4 x i64> %call9, ptr %vt3, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt4) #6
  %4 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr10 = getelementptr inbounds i8, ptr %4, i64 64
  %call11 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr10)
  %call12 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call11)
  store <4 x i64> %call12, ptr %vt4, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt5) #6
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr13 = getelementptr inbounds i8, ptr %5, i64 80
  %call14 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr13)
  %call15 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call14)
  store <4 x i64> %call15, ptr %vt5, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt6) #6
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr16 = getelementptr inbounds i8, ptr %6, i64 96
  %call17 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr16)
  %call18 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call17)
  store <4 x i64> %call18, ptr %vt6, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt7) #6
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr19 = getelementptr inbounds i8, ptr %7, i64 112
  %call20 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr19)
  %call21 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call20)
  store <4 x i64> %call21, ptr %vt7, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt8) #6
  %8 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr22 = getelementptr inbounds i8, ptr %8, i64 128
  %call23 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr22)
  %call24 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call23)
  store <4 x i64> %call24, ptr %vt8, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vt9) #6
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr25 = getelementptr inbounds i8, ptr %9, i64 144
  %call26 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr25)
  %call27 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call26)
  store <4 x i64> %call27, ptr %vt9, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtA) #6
  %10 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr28 = getelementptr inbounds i8, ptr %10, i64 160
  %call29 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr28)
  %call30 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call29)
  store <4 x i64> %call30, ptr %vtA, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtB) #6
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr31 = getelementptr inbounds i8, ptr %11, i64 176
  %call32 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr31)
  %call33 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call32)
  store <4 x i64> %call33, ptr %vtB, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtC) #6
  %12 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr34 = getelementptr inbounds i8, ptr %12, i64 192
  %call35 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr34)
  %call36 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call35)
  store <4 x i64> %call36, ptr %vtC, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtD) #6
  %13 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr37 = getelementptr inbounds i8, ptr %13, i64 208
  %call38 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr37)
  %call39 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call38)
  store <4 x i64> %call39, ptr %vtD, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtE) #6
  %14 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr40 = getelementptr inbounds i8, ptr %14, i64 224
  %call41 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr40)
  %call42 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call41)
  store <4 x i64> %call42, ptr %vtE, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtF) #6
  %15 = load ptr, ptr %t.addr, align 8, !tbaa !8
  %add.ptr43 = getelementptr inbounds i8, ptr %15, i64 240
  %call44 = call <2 x i64> @_mm_load_si128(ptr noundef %add.ptr43)
  %call45 = call <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %call44)
  store <4 x i64> %call45, ptr %vtF, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable0) #6
  %16 = load <4 x i64>, ptr %vt0, align 32, !tbaa !10
  store <4 x i64> %16, ptr %vtable0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable1) #6
  %17 = load <4 x i64>, ptr %vt0, align 32, !tbaa !10
  %18 = load <4 x i64>, ptr %vt1, align 32, !tbaa !10
  %call46 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %17, <4 x i64> noundef %18)
  store <4 x i64> %call46, ptr %vtable1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable2) #6
  %19 = load <4 x i64>, ptr %vt1, align 32, !tbaa !10
  %20 = load <4 x i64>, ptr %vt2, align 32, !tbaa !10
  %call47 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %19, <4 x i64> noundef %20)
  store <4 x i64> %call47, ptr %vtable2, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable3) #6
  %21 = load <4 x i64>, ptr %vt2, align 32, !tbaa !10
  %22 = load <4 x i64>, ptr %vt3, align 32, !tbaa !10
  %call48 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %21, <4 x i64> noundef %22)
  store <4 x i64> %call48, ptr %vtable3, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable4) #6
  %23 = load <4 x i64>, ptr %vt3, align 32, !tbaa !10
  %24 = load <4 x i64>, ptr %vt4, align 32, !tbaa !10
  %call49 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %23, <4 x i64> noundef %24)
  store <4 x i64> %call49, ptr %vtable4, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable5) #6
  %25 = load <4 x i64>, ptr %vt4, align 32, !tbaa !10
  %26 = load <4 x i64>, ptr %vt5, align 32, !tbaa !10
  %call50 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %25, <4 x i64> noundef %26)
  store <4 x i64> %call50, ptr %vtable5, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable6) #6
  %27 = load <4 x i64>, ptr %vt5, align 32, !tbaa !10
  %28 = load <4 x i64>, ptr %vt6, align 32, !tbaa !10
  %call51 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %27, <4 x i64> noundef %28)
  store <4 x i64> %call51, ptr %vtable6, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable7) #6
  %29 = load <4 x i64>, ptr %vt6, align 32, !tbaa !10
  %30 = load <4 x i64>, ptr %vt7, align 32, !tbaa !10
  %call52 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %29, <4 x i64> noundef %30)
  store <4 x i64> %call52, ptr %vtable7, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable8) #6
  %31 = load <4 x i64>, ptr %vt7, align 32, !tbaa !10
  %32 = load <4 x i64>, ptr %vt8, align 32, !tbaa !10
  %call53 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %31, <4 x i64> noundef %32)
  %33 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %call54 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call53, <4 x i64> noundef %33)
  store <4 x i64> %call54, ptr %vtable8, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtable9) #6
  %34 = load <4 x i64>, ptr %vt8, align 32, !tbaa !10
  %35 = load <4 x i64>, ptr %vt9, align 32, !tbaa !10
  %call55 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %34, <4 x i64> noundef %35)
  %36 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %call56 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call55, <4 x i64> noundef %36)
  store <4 x i64> %call56, ptr %vtable9, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtableA) #6
  %37 = load <4 x i64>, ptr %vt9, align 32, !tbaa !10
  %38 = load <4 x i64>, ptr %vtA, align 32, !tbaa !10
  %call57 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %37, <4 x i64> noundef %38)
  %39 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %call58 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call57, <4 x i64> noundef %39)
  store <4 x i64> %call58, ptr %vtableA, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtableB) #6
  %40 = load <4 x i64>, ptr %vtA, align 32, !tbaa !10
  %41 = load <4 x i64>, ptr %vtB, align 32, !tbaa !10
  %call59 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %40, <4 x i64> noundef %41)
  %42 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %call60 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call59, <4 x i64> noundef %42)
  store <4 x i64> %call60, ptr %vtableB, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtableC) #6
  %43 = load <4 x i64>, ptr %vtB, align 32, !tbaa !10
  %44 = load <4 x i64>, ptr %vtC, align 32, !tbaa !10
  %call61 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %43, <4 x i64> noundef %44)
  %45 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %call62 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call61, <4 x i64> noundef %45)
  store <4 x i64> %call62, ptr %vtableC, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtableD) #6
  %46 = load <4 x i64>, ptr %vtC, align 32, !tbaa !10
  %47 = load <4 x i64>, ptr %vtD, align 32, !tbaa !10
  %call63 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %46, <4 x i64> noundef %47)
  %48 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %call64 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call63, <4 x i64> noundef %48)
  store <4 x i64> %call64, ptr %vtableD, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtableE) #6
  %49 = load <4 x i64>, ptr %vtD, align 32, !tbaa !10
  %50 = load <4 x i64>, ptr %vtE, align 32, !tbaa !10
  %call65 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %49, <4 x i64> noundef %50)
  %51 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %call66 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call65, <4 x i64> noundef %51)
  store <4 x i64> %call66, ptr %vtableE, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vtableF) #6
  %52 = load <4 x i64>, ptr %vtE, align 32, !tbaa !10
  %53 = load <4 x i64>, ptr %vtF, align 32, !tbaa !10
  %call67 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %52, <4 x i64> noundef %53)
  %54 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %call68 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %call67, <4 x i64> noundef %54)
  store <4 x i64> %call68, ptr %vtableF, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %voffset) #6
  %call69 = call <4 x i64> @_mm256_set1_epi8(i8 noundef signext 16)
  store <4 x i64> %call69, ptr %voffset, align 32, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %55 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %55, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx0) #6
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call70 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %56)
  store <4 x i64> %call70, ptr %vx0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx1) #6
  %57 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr71 = getelementptr inbounds i8, ptr %57, i64 32
  %call72 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %add.ptr71)
  store <4 x i64> %call72, ptr %vx1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx2) #6
  %58 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr73 = getelementptr inbounds i8, ptr %58, i64 64
  %call74 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %add.ptr73)
  store <4 x i64> %call74, ptr %vx2, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx3) #6
  %59 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr75 = getelementptr inbounds i8, ptr %59, i64 96
  %call76 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %add.ptr75)
  store <4 x i64> %call76, ptr %vx3, align 32, !tbaa !10
  %60 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr77 = getelementptr inbounds i8, ptr %60, i64 128
  store ptr %add.ptr77, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy0) #6
  %61 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %62 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call78 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %61, <4 x i64> noundef %62)
  store <4 x i64> %call78, ptr %vy0, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy1) #6
  %63 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %64 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call79 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %63, <4 x i64> noundef %64)
  store <4 x i64> %call79, ptr %vy1, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy2) #6
  %65 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %66 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call80 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %65, <4 x i64> noundef %66)
  store <4 x i64> %call80, ptr %vy2, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy3) #6
  %67 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %68 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call81 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %67, <4 x i64> noundef %68)
  store <4 x i64> %call81, ptr %vy3, align 32, !tbaa !10
  %69 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %70 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call82 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %69, <4 x i64> noundef %70)
  store <4 x i64> %call82, ptr %vx0, align 32, !tbaa !10
  %71 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %72 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call83 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %71, <4 x i64> noundef %72)
  store <4 x i64> %call83, ptr %vx1, align 32, !tbaa !10
  %73 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %74 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call84 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %73, <4 x i64> noundef %74)
  store <4 x i64> %call84, ptr %vx2, align 32, !tbaa !10
  %75 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %76 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call85 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %75, <4 x i64> noundef %76)
  store <4 x i64> %call85, ptr %vx3, align 32, !tbaa !10
  %77 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %78 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %79 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call86 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %78, <4 x i64> noundef %79)
  %call87 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %77, <4 x i64> noundef %call86)
  store <4 x i64> %call87, ptr %vy0, align 32, !tbaa !10
  %80 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %81 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %82 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call88 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %81, <4 x i64> noundef %82)
  %call89 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %80, <4 x i64> noundef %call88)
  store <4 x i64> %call89, ptr %vy1, align 32, !tbaa !10
  %83 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %84 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %85 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call90 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %84, <4 x i64> noundef %85)
  %call91 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %83, <4 x i64> noundef %call90)
  store <4 x i64> %call91, ptr %vy2, align 32, !tbaa !10
  %86 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %87 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %88 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call92 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %87, <4 x i64> noundef %88)
  %call93 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %86, <4 x i64> noundef %call92)
  store <4 x i64> %call93, ptr %vy3, align 32, !tbaa !10
  %89 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %90 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call94 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %89, <4 x i64> noundef %90)
  store <4 x i64> %call94, ptr %vx0, align 32, !tbaa !10
  %91 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %92 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call95 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %91, <4 x i64> noundef %92)
  store <4 x i64> %call95, ptr %vx1, align 32, !tbaa !10
  %93 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %94 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call96 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %93, <4 x i64> noundef %94)
  store <4 x i64> %call96, ptr %vx2, align 32, !tbaa !10
  %95 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %96 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call97 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %95, <4 x i64> noundef %96)
  store <4 x i64> %call97, ptr %vx3, align 32, !tbaa !10
  %97 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %98 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %99 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call98 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %98, <4 x i64> noundef %99)
  %call99 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %97, <4 x i64> noundef %call98)
  store <4 x i64> %call99, ptr %vy0, align 32, !tbaa !10
  %100 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %101 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %102 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call100 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %101, <4 x i64> noundef %102)
  %call101 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %100, <4 x i64> noundef %call100)
  store <4 x i64> %call101, ptr %vy1, align 32, !tbaa !10
  %103 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %104 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %105 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call102 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %104, <4 x i64> noundef %105)
  %call103 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %103, <4 x i64> noundef %call102)
  store <4 x i64> %call103, ptr %vy2, align 32, !tbaa !10
  %106 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %107 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %108 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call104 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %107, <4 x i64> noundef %108)
  %call105 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %106, <4 x i64> noundef %call104)
  store <4 x i64> %call105, ptr %vy3, align 32, !tbaa !10
  %109 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %110 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call106 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %109, <4 x i64> noundef %110)
  store <4 x i64> %call106, ptr %vx0, align 32, !tbaa !10
  %111 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %112 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call107 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %111, <4 x i64> noundef %112)
  store <4 x i64> %call107, ptr %vx1, align 32, !tbaa !10
  %113 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %114 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call108 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %113, <4 x i64> noundef %114)
  store <4 x i64> %call108, ptr %vx2, align 32, !tbaa !10
  %115 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %116 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call109 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %115, <4 x i64> noundef %116)
  store <4 x i64> %call109, ptr %vx3, align 32, !tbaa !10
  %117 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %118 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %119 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call110 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %118, <4 x i64> noundef %119)
  %call111 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %117, <4 x i64> noundef %call110)
  store <4 x i64> %call111, ptr %vy0, align 32, !tbaa !10
  %120 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %121 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %122 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call112 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %121, <4 x i64> noundef %122)
  %call113 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %120, <4 x i64> noundef %call112)
  store <4 x i64> %call113, ptr %vy1, align 32, !tbaa !10
  %123 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %124 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %125 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call114 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %124, <4 x i64> noundef %125)
  %call115 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %123, <4 x i64> noundef %call114)
  store <4 x i64> %call115, ptr %vy2, align 32, !tbaa !10
  %126 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %127 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %128 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call116 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %127, <4 x i64> noundef %128)
  %call117 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %126, <4 x i64> noundef %call116)
  store <4 x i64> %call117, ptr %vy3, align 32, !tbaa !10
  %129 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %130 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call118 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %129, <4 x i64> noundef %130)
  store <4 x i64> %call118, ptr %vx0, align 32, !tbaa !10
  %131 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %132 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call119 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %131, <4 x i64> noundef %132)
  store <4 x i64> %call119, ptr %vx1, align 32, !tbaa !10
  %133 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %134 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call120 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %133, <4 x i64> noundef %134)
  store <4 x i64> %call120, ptr %vx2, align 32, !tbaa !10
  %135 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %136 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call121 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %135, <4 x i64> noundef %136)
  store <4 x i64> %call121, ptr %vx3, align 32, !tbaa !10
  %137 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %138 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %139 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call122 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %138, <4 x i64> noundef %139)
  %call123 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %137, <4 x i64> noundef %call122)
  store <4 x i64> %call123, ptr %vy0, align 32, !tbaa !10
  %140 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %141 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %142 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call124 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %141, <4 x i64> noundef %142)
  %call125 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %140, <4 x i64> noundef %call124)
  store <4 x i64> %call125, ptr %vy1, align 32, !tbaa !10
  %143 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %144 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %145 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call126 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %144, <4 x i64> noundef %145)
  %call127 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %143, <4 x i64> noundef %call126)
  store <4 x i64> %call127, ptr %vy2, align 32, !tbaa !10
  %146 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %147 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %148 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call128 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %147, <4 x i64> noundef %148)
  %call129 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %146, <4 x i64> noundef %call128)
  store <4 x i64> %call129, ptr %vy3, align 32, !tbaa !10
  %149 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %150 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call130 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %149, <4 x i64> noundef %150)
  store <4 x i64> %call130, ptr %vx0, align 32, !tbaa !10
  %151 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %152 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call131 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %151, <4 x i64> noundef %152)
  store <4 x i64> %call131, ptr %vx1, align 32, !tbaa !10
  %153 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %154 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call132 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %153, <4 x i64> noundef %154)
  store <4 x i64> %call132, ptr %vx2, align 32, !tbaa !10
  %155 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %156 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call133 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %155, <4 x i64> noundef %156)
  store <4 x i64> %call133, ptr %vx3, align 32, !tbaa !10
  %157 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %158 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %159 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call134 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %158, <4 x i64> noundef %159)
  %call135 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %157, <4 x i64> noundef %call134)
  store <4 x i64> %call135, ptr %vy0, align 32, !tbaa !10
  %160 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %161 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %162 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call136 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %161, <4 x i64> noundef %162)
  %call137 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %160, <4 x i64> noundef %call136)
  store <4 x i64> %call137, ptr %vy1, align 32, !tbaa !10
  %163 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %164 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %165 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call138 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %164, <4 x i64> noundef %165)
  %call139 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %163, <4 x i64> noundef %call138)
  store <4 x i64> %call139, ptr %vy2, align 32, !tbaa !10
  %166 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %167 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %168 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call140 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %167, <4 x i64> noundef %168)
  %call141 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %166, <4 x i64> noundef %call140)
  store <4 x i64> %call141, ptr %vy3, align 32, !tbaa !10
  %169 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %170 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call142 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %169, <4 x i64> noundef %170)
  store <4 x i64> %call142, ptr %vx0, align 32, !tbaa !10
  %171 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %172 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call143 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %171, <4 x i64> noundef %172)
  store <4 x i64> %call143, ptr %vx1, align 32, !tbaa !10
  %173 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %174 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call144 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %173, <4 x i64> noundef %174)
  store <4 x i64> %call144, ptr %vx2, align 32, !tbaa !10
  %175 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %176 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call145 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %175, <4 x i64> noundef %176)
  store <4 x i64> %call145, ptr %vx3, align 32, !tbaa !10
  %177 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %178 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %179 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call146 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %178, <4 x i64> noundef %179)
  %call147 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %177, <4 x i64> noundef %call146)
  store <4 x i64> %call147, ptr %vy0, align 32, !tbaa !10
  %180 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %181 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %182 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call148 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %181, <4 x i64> noundef %182)
  %call149 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %180, <4 x i64> noundef %call148)
  store <4 x i64> %call149, ptr %vy1, align 32, !tbaa !10
  %183 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %184 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %185 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call150 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %184, <4 x i64> noundef %185)
  %call151 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %183, <4 x i64> noundef %call150)
  store <4 x i64> %call151, ptr %vy2, align 32, !tbaa !10
  %186 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %187 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %188 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call152 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %187, <4 x i64> noundef %188)
  %call153 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %186, <4 x i64> noundef %call152)
  store <4 x i64> %call153, ptr %vy3, align 32, !tbaa !10
  %189 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %190 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call154 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %189, <4 x i64> noundef %190)
  store <4 x i64> %call154, ptr %vx0, align 32, !tbaa !10
  %191 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %192 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call155 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %191, <4 x i64> noundef %192)
  store <4 x i64> %call155, ptr %vx1, align 32, !tbaa !10
  %193 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %194 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call156 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %193, <4 x i64> noundef %194)
  store <4 x i64> %call156, ptr %vx2, align 32, !tbaa !10
  %195 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %196 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call157 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %195, <4 x i64> noundef %196)
  store <4 x i64> %call157, ptr %vx3, align 32, !tbaa !10
  %197 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %198 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %199 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call158 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %198, <4 x i64> noundef %199)
  %call159 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %197, <4 x i64> noundef %call158)
  store <4 x i64> %call159, ptr %vy0, align 32, !tbaa !10
  %200 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %201 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %202 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call160 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %201, <4 x i64> noundef %202)
  %call161 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %200, <4 x i64> noundef %call160)
  store <4 x i64> %call161, ptr %vy1, align 32, !tbaa !10
  %203 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %204 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %205 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call162 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %204, <4 x i64> noundef %205)
  %call163 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %203, <4 x i64> noundef %call162)
  store <4 x i64> %call163, ptr %vy2, align 32, !tbaa !10
  %206 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %207 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %208 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call164 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %207, <4 x i64> noundef %208)
  %call165 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %206, <4 x i64> noundef %call164)
  store <4 x i64> %call165, ptr %vy3, align 32, !tbaa !10
  %209 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %210 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call166 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %209, <4 x i64> noundef %210)
  store <4 x i64> %call166, ptr %vx0, align 32, !tbaa !10
  %211 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %212 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call167 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %211, <4 x i64> noundef %212)
  store <4 x i64> %call167, ptr %vx1, align 32, !tbaa !10
  %213 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %214 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call168 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %213, <4 x i64> noundef %214)
  store <4 x i64> %call168, ptr %vx2, align 32, !tbaa !10
  %215 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %216 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call169 = call <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %215, <4 x i64> noundef %216)
  store <4 x i64> %call169, ptr %vx3, align 32, !tbaa !10
  %217 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %218 = load <4 x i64>, ptr %vtable8, align 32, !tbaa !10
  %219 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call170 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %218, <4 x i64> noundef %219)
  %call171 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %217, <4 x i64> noundef %call170)
  store <4 x i64> %call171, ptr %vy0, align 32, !tbaa !10
  %220 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %221 = load <4 x i64>, ptr %vtable8, align 32, !tbaa !10
  %222 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call172 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %221, <4 x i64> noundef %222)
  %call173 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %220, <4 x i64> noundef %call172)
  store <4 x i64> %call173, ptr %vy1, align 32, !tbaa !10
  %223 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %224 = load <4 x i64>, ptr %vtable8, align 32, !tbaa !10
  %225 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call174 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %224, <4 x i64> noundef %225)
  %call175 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %223, <4 x i64> noundef %call174)
  store <4 x i64> %call175, ptr %vy2, align 32, !tbaa !10
  %226 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %227 = load <4 x i64>, ptr %vtable8, align 32, !tbaa !10
  %228 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call176 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %227, <4 x i64> noundef %228)
  %call177 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %226, <4 x i64> noundef %call176)
  store <4 x i64> %call177, ptr %vy3, align 32, !tbaa !10
  %229 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %230 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call178 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %229, <4 x i64> noundef %230)
  store <4 x i64> %call178, ptr %vx0, align 32, !tbaa !10
  %231 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %232 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call179 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %231, <4 x i64> noundef %232)
  store <4 x i64> %call179, ptr %vx1, align 32, !tbaa !10
  %233 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %234 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call180 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %233, <4 x i64> noundef %234)
  store <4 x i64> %call180, ptr %vx2, align 32, !tbaa !10
  %235 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %236 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call181 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %235, <4 x i64> noundef %236)
  store <4 x i64> %call181, ptr %vx3, align 32, !tbaa !10
  %237 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %238 = load <4 x i64>, ptr %vtable9, align 32, !tbaa !10
  %239 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call182 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %238, <4 x i64> noundef %239)
  %call183 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %237, <4 x i64> noundef %call182)
  store <4 x i64> %call183, ptr %vy0, align 32, !tbaa !10
  %240 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %241 = load <4 x i64>, ptr %vtable9, align 32, !tbaa !10
  %242 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call184 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %241, <4 x i64> noundef %242)
  %call185 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %240, <4 x i64> noundef %call184)
  store <4 x i64> %call185, ptr %vy1, align 32, !tbaa !10
  %243 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %244 = load <4 x i64>, ptr %vtable9, align 32, !tbaa !10
  %245 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call186 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %244, <4 x i64> noundef %245)
  %call187 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %243, <4 x i64> noundef %call186)
  store <4 x i64> %call187, ptr %vy2, align 32, !tbaa !10
  %246 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %247 = load <4 x i64>, ptr %vtable9, align 32, !tbaa !10
  %248 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call188 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %247, <4 x i64> noundef %248)
  %call189 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %246, <4 x i64> noundef %call188)
  store <4 x i64> %call189, ptr %vy3, align 32, !tbaa !10
  %249 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %250 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call190 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %249, <4 x i64> noundef %250)
  store <4 x i64> %call190, ptr %vx0, align 32, !tbaa !10
  %251 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %252 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call191 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %251, <4 x i64> noundef %252)
  store <4 x i64> %call191, ptr %vx1, align 32, !tbaa !10
  %253 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %254 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call192 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %253, <4 x i64> noundef %254)
  store <4 x i64> %call192, ptr %vx2, align 32, !tbaa !10
  %255 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %256 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call193 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %255, <4 x i64> noundef %256)
  store <4 x i64> %call193, ptr %vx3, align 32, !tbaa !10
  %257 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %258 = load <4 x i64>, ptr %vtableA, align 32, !tbaa !10
  %259 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call194 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %258, <4 x i64> noundef %259)
  %call195 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %257, <4 x i64> noundef %call194)
  store <4 x i64> %call195, ptr %vy0, align 32, !tbaa !10
  %260 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %261 = load <4 x i64>, ptr %vtableA, align 32, !tbaa !10
  %262 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call196 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %261, <4 x i64> noundef %262)
  %call197 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %260, <4 x i64> noundef %call196)
  store <4 x i64> %call197, ptr %vy1, align 32, !tbaa !10
  %263 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %264 = load <4 x i64>, ptr %vtableA, align 32, !tbaa !10
  %265 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call198 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %264, <4 x i64> noundef %265)
  %call199 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %263, <4 x i64> noundef %call198)
  store <4 x i64> %call199, ptr %vy2, align 32, !tbaa !10
  %266 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %267 = load <4 x i64>, ptr %vtableA, align 32, !tbaa !10
  %268 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call200 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %267, <4 x i64> noundef %268)
  %call201 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %266, <4 x i64> noundef %call200)
  store <4 x i64> %call201, ptr %vy3, align 32, !tbaa !10
  %269 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %270 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call202 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %269, <4 x i64> noundef %270)
  store <4 x i64> %call202, ptr %vx0, align 32, !tbaa !10
  %271 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %272 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call203 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %271, <4 x i64> noundef %272)
  store <4 x i64> %call203, ptr %vx1, align 32, !tbaa !10
  %273 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %274 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call204 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %273, <4 x i64> noundef %274)
  store <4 x i64> %call204, ptr %vx2, align 32, !tbaa !10
  %275 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %276 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call205 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %275, <4 x i64> noundef %276)
  store <4 x i64> %call205, ptr %vx3, align 32, !tbaa !10
  %277 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %278 = load <4 x i64>, ptr %vtableB, align 32, !tbaa !10
  %279 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call206 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %278, <4 x i64> noundef %279)
  %call207 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %277, <4 x i64> noundef %call206)
  store <4 x i64> %call207, ptr %vy0, align 32, !tbaa !10
  %280 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %281 = load <4 x i64>, ptr %vtableB, align 32, !tbaa !10
  %282 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call208 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %281, <4 x i64> noundef %282)
  %call209 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %280, <4 x i64> noundef %call208)
  store <4 x i64> %call209, ptr %vy1, align 32, !tbaa !10
  %283 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %284 = load <4 x i64>, ptr %vtableB, align 32, !tbaa !10
  %285 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call210 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %284, <4 x i64> noundef %285)
  %call211 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %283, <4 x i64> noundef %call210)
  store <4 x i64> %call211, ptr %vy2, align 32, !tbaa !10
  %286 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %287 = load <4 x i64>, ptr %vtableB, align 32, !tbaa !10
  %288 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call212 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %287, <4 x i64> noundef %288)
  %call213 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %286, <4 x i64> noundef %call212)
  store <4 x i64> %call213, ptr %vy3, align 32, !tbaa !10
  %289 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %290 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call214 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %289, <4 x i64> noundef %290)
  store <4 x i64> %call214, ptr %vx0, align 32, !tbaa !10
  %291 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %292 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call215 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %291, <4 x i64> noundef %292)
  store <4 x i64> %call215, ptr %vx1, align 32, !tbaa !10
  %293 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %294 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call216 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %293, <4 x i64> noundef %294)
  store <4 x i64> %call216, ptr %vx2, align 32, !tbaa !10
  %295 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %296 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call217 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %295, <4 x i64> noundef %296)
  store <4 x i64> %call217, ptr %vx3, align 32, !tbaa !10
  %297 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %298 = load <4 x i64>, ptr %vtableC, align 32, !tbaa !10
  %299 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call218 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %298, <4 x i64> noundef %299)
  %call219 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %297, <4 x i64> noundef %call218)
  store <4 x i64> %call219, ptr %vy0, align 32, !tbaa !10
  %300 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %301 = load <4 x i64>, ptr %vtableC, align 32, !tbaa !10
  %302 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call220 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %301, <4 x i64> noundef %302)
  %call221 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %300, <4 x i64> noundef %call220)
  store <4 x i64> %call221, ptr %vy1, align 32, !tbaa !10
  %303 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %304 = load <4 x i64>, ptr %vtableC, align 32, !tbaa !10
  %305 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call222 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %304, <4 x i64> noundef %305)
  %call223 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %303, <4 x i64> noundef %call222)
  store <4 x i64> %call223, ptr %vy2, align 32, !tbaa !10
  %306 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %307 = load <4 x i64>, ptr %vtableC, align 32, !tbaa !10
  %308 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call224 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %307, <4 x i64> noundef %308)
  %call225 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %306, <4 x i64> noundef %call224)
  store <4 x i64> %call225, ptr %vy3, align 32, !tbaa !10
  %309 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %310 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call226 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %309, <4 x i64> noundef %310)
  store <4 x i64> %call226, ptr %vx0, align 32, !tbaa !10
  %311 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %312 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call227 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %311, <4 x i64> noundef %312)
  store <4 x i64> %call227, ptr %vx1, align 32, !tbaa !10
  %313 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %314 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call228 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %313, <4 x i64> noundef %314)
  store <4 x i64> %call228, ptr %vx2, align 32, !tbaa !10
  %315 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %316 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call229 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %315, <4 x i64> noundef %316)
  store <4 x i64> %call229, ptr %vx3, align 32, !tbaa !10
  %317 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %318 = load <4 x i64>, ptr %vtableD, align 32, !tbaa !10
  %319 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call230 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %318, <4 x i64> noundef %319)
  %call231 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %317, <4 x i64> noundef %call230)
  store <4 x i64> %call231, ptr %vy0, align 32, !tbaa !10
  %320 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %321 = load <4 x i64>, ptr %vtableD, align 32, !tbaa !10
  %322 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call232 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %321, <4 x i64> noundef %322)
  %call233 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %320, <4 x i64> noundef %call232)
  store <4 x i64> %call233, ptr %vy1, align 32, !tbaa !10
  %323 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %324 = load <4 x i64>, ptr %vtableD, align 32, !tbaa !10
  %325 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call234 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %324, <4 x i64> noundef %325)
  %call235 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %323, <4 x i64> noundef %call234)
  store <4 x i64> %call235, ptr %vy2, align 32, !tbaa !10
  %326 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %327 = load <4 x i64>, ptr %vtableD, align 32, !tbaa !10
  %328 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call236 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %327, <4 x i64> noundef %328)
  %call237 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %326, <4 x i64> noundef %call236)
  store <4 x i64> %call237, ptr %vy3, align 32, !tbaa !10
  %329 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %330 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call238 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %329, <4 x i64> noundef %330)
  store <4 x i64> %call238, ptr %vx0, align 32, !tbaa !10
  %331 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %332 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call239 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %331, <4 x i64> noundef %332)
  store <4 x i64> %call239, ptr %vx1, align 32, !tbaa !10
  %333 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %334 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call240 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %333, <4 x i64> noundef %334)
  store <4 x i64> %call240, ptr %vx2, align 32, !tbaa !10
  %335 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %336 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call241 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %335, <4 x i64> noundef %336)
  store <4 x i64> %call241, ptr %vx3, align 32, !tbaa !10
  %337 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %338 = load <4 x i64>, ptr %vtableE, align 32, !tbaa !10
  %339 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call242 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %338, <4 x i64> noundef %339)
  %call243 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %337, <4 x i64> noundef %call242)
  store <4 x i64> %call243, ptr %vy0, align 32, !tbaa !10
  %340 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %341 = load <4 x i64>, ptr %vtableE, align 32, !tbaa !10
  %342 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call244 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %341, <4 x i64> noundef %342)
  %call245 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %340, <4 x i64> noundef %call244)
  store <4 x i64> %call245, ptr %vy1, align 32, !tbaa !10
  %343 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %344 = load <4 x i64>, ptr %vtableE, align 32, !tbaa !10
  %345 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call246 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %344, <4 x i64> noundef %345)
  %call247 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %343, <4 x i64> noundef %call246)
  store <4 x i64> %call247, ptr %vy2, align 32, !tbaa !10
  %346 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %347 = load <4 x i64>, ptr %vtableE, align 32, !tbaa !10
  %348 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call248 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %347, <4 x i64> noundef %348)
  %call249 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %346, <4 x i64> noundef %call248)
  store <4 x i64> %call249, ptr %vy3, align 32, !tbaa !10
  %349 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %350 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call250 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %349, <4 x i64> noundef %350)
  store <4 x i64> %call250, ptr %vx0, align 32, !tbaa !10
  %351 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %352 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call251 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %351, <4 x i64> noundef %352)
  store <4 x i64> %call251, ptr %vx1, align 32, !tbaa !10
  %353 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %354 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call252 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %353, <4 x i64> noundef %354)
  store <4 x i64> %call252, ptr %vx2, align 32, !tbaa !10
  %355 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %356 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call253 = call <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %355, <4 x i64> noundef %356)
  store <4 x i64> %call253, ptr %vx3, align 32, !tbaa !10
  %357 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  %358 = load <4 x i64>, ptr %vtableF, align 32, !tbaa !10
  %359 = load <4 x i64>, ptr %vx0, align 32, !tbaa !10
  %call254 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %358, <4 x i64> noundef %359)
  %call255 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %357, <4 x i64> noundef %call254)
  store <4 x i64> %call255, ptr %vy0, align 32, !tbaa !10
  %360 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  %361 = load <4 x i64>, ptr %vtableF, align 32, !tbaa !10
  %362 = load <4 x i64>, ptr %vx1, align 32, !tbaa !10
  %call256 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %361, <4 x i64> noundef %362)
  %call257 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %360, <4 x i64> noundef %call256)
  store <4 x i64> %call257, ptr %vy1, align 32, !tbaa !10
  %363 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  %364 = load <4 x i64>, ptr %vtableF, align 32, !tbaa !10
  %365 = load <4 x i64>, ptr %vx2, align 32, !tbaa !10
  %call258 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %364, <4 x i64> noundef %365)
  %call259 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %363, <4 x i64> noundef %call258)
  store <4 x i64> %call259, ptr %vy2, align 32, !tbaa !10
  %366 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  %367 = load <4 x i64>, ptr %vtableF, align 32, !tbaa !10
  %368 = load <4 x i64>, ptr %vx3, align 32, !tbaa !10
  %call260 = call <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %367, <4 x i64> noundef %368)
  %call261 = call <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %366, <4 x i64> noundef %call260)
  store <4 x i64> %call261, ptr %vy3, align 32, !tbaa !10
  %369 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %370 = load <4 x i64>, ptr %vy0, align 32, !tbaa !10
  call void @_mm256_storeu_si256(ptr noundef %369, <4 x i64> noundef %370)
  %371 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr262 = getelementptr inbounds i8, ptr %371, i64 32
  %372 = load <4 x i64>, ptr %vy1, align 32, !tbaa !10
  call void @_mm256_storeu_si256(ptr noundef %add.ptr262, <4 x i64> noundef %372)
  %373 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr263 = getelementptr inbounds i8, ptr %373, i64 64
  %374 = load <4 x i64>, ptr %vy2, align 32, !tbaa !10
  call void @_mm256_storeu_si256(ptr noundef %add.ptr263, <4 x i64> noundef %374)
  %375 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr264 = getelementptr inbounds i8, ptr %375, i64 96
  %376 = load <4 x i64>, ptr %vy3, align 32, !tbaa !10
  call void @_mm256_storeu_si256(ptr noundef %add.ptr264, <4 x i64> noundef %376)
  %377 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr265 = getelementptr inbounds i8, ptr %377, i64 128
  store ptr %add.ptr265, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx0) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %378 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub i64 %378, 128
  store i64 %sub, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond266

for.cond266:                                      ; preds = %for.inc349, %for.end
  %379 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp267 = icmp uge i64 %379, 16
  br i1 %cmp267, label %for.body268, label %for.end351

for.body268:                                      ; preds = %for.cond266
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx) #6
  %380 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call269 = call <2 x i64> @_mm_loadu_si128(ptr noundef %380)
  store <2 x i64> %call269, ptr %vx, align 16, !tbaa !10
  %381 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr270 = getelementptr inbounds i8, ptr %381, i64 16
  store ptr %add.ptr270, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy) #6
  %382 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %call271 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %382)
  %383 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call272 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call271, <2 x i64> noundef %383)
  store <2 x i64> %call272, ptr %vy, align 16, !tbaa !10
  %384 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %385 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call273 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %385)
  %call274 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %384, <2 x i64> noundef %call273)
  store <2 x i64> %call274, ptr %vx, align 16, !tbaa !10
  %386 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %387 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %call275 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %387)
  %388 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call276 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call275, <2 x i64> noundef %388)
  %call277 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %386, <2 x i64> noundef %call276)
  store <2 x i64> %call277, ptr %vy, align 16, !tbaa !10
  %389 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %390 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call278 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %390)
  %call279 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %389, <2 x i64> noundef %call278)
  store <2 x i64> %call279, ptr %vx, align 16, !tbaa !10
  %391 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %392 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %call280 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %392)
  %393 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call281 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call280, <2 x i64> noundef %393)
  %call282 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %391, <2 x i64> noundef %call281)
  store <2 x i64> %call282, ptr %vy, align 16, !tbaa !10
  %394 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %395 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call283 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %395)
  %call284 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %394, <2 x i64> noundef %call283)
  store <2 x i64> %call284, ptr %vx, align 16, !tbaa !10
  %396 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %397 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %call285 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %397)
  %398 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call286 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call285, <2 x i64> noundef %398)
  %call287 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %396, <2 x i64> noundef %call286)
  store <2 x i64> %call287, ptr %vy, align 16, !tbaa !10
  %399 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %400 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call288 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %400)
  %call289 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %399, <2 x i64> noundef %call288)
  store <2 x i64> %call289, ptr %vx, align 16, !tbaa !10
  %401 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %402 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %call290 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %402)
  %403 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call291 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call290, <2 x i64> noundef %403)
  %call292 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %401, <2 x i64> noundef %call291)
  store <2 x i64> %call292, ptr %vy, align 16, !tbaa !10
  %404 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %405 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call293 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %405)
  %call294 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %404, <2 x i64> noundef %call293)
  store <2 x i64> %call294, ptr %vx, align 16, !tbaa !10
  %406 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %407 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %call295 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %407)
  %408 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call296 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call295, <2 x i64> noundef %408)
  %call297 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %406, <2 x i64> noundef %call296)
  store <2 x i64> %call297, ptr %vy, align 16, !tbaa !10
  %409 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %410 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call298 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %410)
  %call299 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %409, <2 x i64> noundef %call298)
  store <2 x i64> %call299, ptr %vx, align 16, !tbaa !10
  %411 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %412 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %call300 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %412)
  %413 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call301 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call300, <2 x i64> noundef %413)
  %call302 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %411, <2 x i64> noundef %call301)
  store <2 x i64> %call302, ptr %vy, align 16, !tbaa !10
  %414 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %415 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call303 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %415)
  %call304 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %414, <2 x i64> noundef %call303)
  store <2 x i64> %call304, ptr %vx, align 16, !tbaa !10
  %416 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %417 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %call305 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %417)
  %418 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call306 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call305, <2 x i64> noundef %418)
  %call307 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %416, <2 x i64> noundef %call306)
  store <2 x i64> %call307, ptr %vy, align 16, !tbaa !10
  %419 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %420 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call308 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %420)
  %call309 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %419, <2 x i64> noundef %call308)
  store <2 x i64> %call309, ptr %vx, align 16, !tbaa !10
  %421 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %422 = load <4 x i64>, ptr %vtable8, align 32, !tbaa !10
  %call310 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %422)
  %423 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call311 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call310, <2 x i64> noundef %423)
  %call312 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %421, <2 x i64> noundef %call311)
  store <2 x i64> %call312, ptr %vy, align 16, !tbaa !10
  %424 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %425 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call313 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %425)
  %call314 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %424, <2 x i64> noundef %call313)
  store <2 x i64> %call314, ptr %vx, align 16, !tbaa !10
  %426 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %427 = load <4 x i64>, ptr %vtable9, align 32, !tbaa !10
  %call315 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %427)
  %428 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call316 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call315, <2 x i64> noundef %428)
  %call317 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %426, <2 x i64> noundef %call316)
  store <2 x i64> %call317, ptr %vy, align 16, !tbaa !10
  %429 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %430 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call318 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %430)
  %call319 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %429, <2 x i64> noundef %call318)
  store <2 x i64> %call319, ptr %vx, align 16, !tbaa !10
  %431 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %432 = load <4 x i64>, ptr %vtableA, align 32, !tbaa !10
  %call320 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %432)
  %433 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call321 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call320, <2 x i64> noundef %433)
  %call322 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %431, <2 x i64> noundef %call321)
  store <2 x i64> %call322, ptr %vy, align 16, !tbaa !10
  %434 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %435 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call323 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %435)
  %call324 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %434, <2 x i64> noundef %call323)
  store <2 x i64> %call324, ptr %vx, align 16, !tbaa !10
  %436 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %437 = load <4 x i64>, ptr %vtableB, align 32, !tbaa !10
  %call325 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %437)
  %438 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call326 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call325, <2 x i64> noundef %438)
  %call327 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %436, <2 x i64> noundef %call326)
  store <2 x i64> %call327, ptr %vy, align 16, !tbaa !10
  %439 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %440 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call328 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %440)
  %call329 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %439, <2 x i64> noundef %call328)
  store <2 x i64> %call329, ptr %vx, align 16, !tbaa !10
  %441 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %442 = load <4 x i64>, ptr %vtableC, align 32, !tbaa !10
  %call330 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %442)
  %443 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call331 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call330, <2 x i64> noundef %443)
  %call332 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %441, <2 x i64> noundef %call331)
  store <2 x i64> %call332, ptr %vy, align 16, !tbaa !10
  %444 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %445 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call333 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %445)
  %call334 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %444, <2 x i64> noundef %call333)
  store <2 x i64> %call334, ptr %vx, align 16, !tbaa !10
  %446 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %447 = load <4 x i64>, ptr %vtableD, align 32, !tbaa !10
  %call335 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %447)
  %448 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call336 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call335, <2 x i64> noundef %448)
  %call337 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %446, <2 x i64> noundef %call336)
  store <2 x i64> %call337, ptr %vy, align 16, !tbaa !10
  %449 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %450 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call338 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %450)
  %call339 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %449, <2 x i64> noundef %call338)
  store <2 x i64> %call339, ptr %vx, align 16, !tbaa !10
  %451 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %452 = load <4 x i64>, ptr %vtableE, align 32, !tbaa !10
  %call340 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %452)
  %453 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call341 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call340, <2 x i64> noundef %453)
  %call342 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %451, <2 x i64> noundef %call341)
  store <2 x i64> %call342, ptr %vy, align 16, !tbaa !10
  %454 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %455 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call343 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %455)
  %call344 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %454, <2 x i64> noundef %call343)
  store <2 x i64> %call344, ptr %vx, align 16, !tbaa !10
  %456 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %457 = load <4 x i64>, ptr %vtableF, align 32, !tbaa !10
  %call345 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %457)
  %458 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %call346 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call345, <2 x i64> noundef %458)
  %call347 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %456, <2 x i64> noundef %call346)
  store <2 x i64> %call347, ptr %vy, align 16, !tbaa !10
  %459 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %460 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  call void @_mm_storeu_si128(ptr noundef %459, <2 x i64> noundef %460)
  %461 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr348 = getelementptr inbounds i8, ptr %461, i64 16
  store ptr %add.ptr348, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx) #6
  br label %for.inc349

for.inc349:                                       ; preds = %for.body268
  %462 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub350 = sub i64 %462, 16
  store i64 %sub350, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond266

for.end351:                                       ; preds = %for.cond266
  %463 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp352 = icmp ne i64 %463, 0
  %lnot = xor i1 %cmp352, true
  %lnot353 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot353 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end458

if.then:                                          ; preds = %for.end351
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx354) #6
  %464 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call355 = call <2 x i64> @_mm_loadu_si128(ptr noundef %464)
  store <2 x i64> %call355, ptr %vx354, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy356) #6
  %465 = load <4 x i64>, ptr %vtable0, align 32, !tbaa !10
  %call357 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %465)
  %466 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call358 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call357, <2 x i64> noundef %466)
  store <2 x i64> %call358, ptr %vy356, align 16, !tbaa !10
  %467 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %468 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call359 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %468)
  %call360 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %467, <2 x i64> noundef %call359)
  store <2 x i64> %call360, ptr %vx354, align 16, !tbaa !10
  %469 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %470 = load <4 x i64>, ptr %vtable1, align 32, !tbaa !10
  %call361 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %470)
  %471 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call362 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call361, <2 x i64> noundef %471)
  %call363 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %469, <2 x i64> noundef %call362)
  store <2 x i64> %call363, ptr %vy356, align 16, !tbaa !10
  %472 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %473 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call364 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %473)
  %call365 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %472, <2 x i64> noundef %call364)
  store <2 x i64> %call365, ptr %vx354, align 16, !tbaa !10
  %474 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %475 = load <4 x i64>, ptr %vtable2, align 32, !tbaa !10
  %call366 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %475)
  %476 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call367 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call366, <2 x i64> noundef %476)
  %call368 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %474, <2 x i64> noundef %call367)
  store <2 x i64> %call368, ptr %vy356, align 16, !tbaa !10
  %477 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %478 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call369 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %478)
  %call370 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %477, <2 x i64> noundef %call369)
  store <2 x i64> %call370, ptr %vx354, align 16, !tbaa !10
  %479 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %480 = load <4 x i64>, ptr %vtable3, align 32, !tbaa !10
  %call371 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %480)
  %481 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call372 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call371, <2 x i64> noundef %481)
  %call373 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %479, <2 x i64> noundef %call372)
  store <2 x i64> %call373, ptr %vy356, align 16, !tbaa !10
  %482 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %483 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call374 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %483)
  %call375 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %482, <2 x i64> noundef %call374)
  store <2 x i64> %call375, ptr %vx354, align 16, !tbaa !10
  %484 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %485 = load <4 x i64>, ptr %vtable4, align 32, !tbaa !10
  %call376 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %485)
  %486 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call377 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call376, <2 x i64> noundef %486)
  %call378 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %484, <2 x i64> noundef %call377)
  store <2 x i64> %call378, ptr %vy356, align 16, !tbaa !10
  %487 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %488 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call379 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %488)
  %call380 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %487, <2 x i64> noundef %call379)
  store <2 x i64> %call380, ptr %vx354, align 16, !tbaa !10
  %489 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %490 = load <4 x i64>, ptr %vtable5, align 32, !tbaa !10
  %call381 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %490)
  %491 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call382 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call381, <2 x i64> noundef %491)
  %call383 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %489, <2 x i64> noundef %call382)
  store <2 x i64> %call383, ptr %vy356, align 16, !tbaa !10
  %492 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %493 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call384 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %493)
  %call385 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %492, <2 x i64> noundef %call384)
  store <2 x i64> %call385, ptr %vx354, align 16, !tbaa !10
  %494 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %495 = load <4 x i64>, ptr %vtable6, align 32, !tbaa !10
  %call386 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %495)
  %496 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call387 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call386, <2 x i64> noundef %496)
  %call388 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %494, <2 x i64> noundef %call387)
  store <2 x i64> %call388, ptr %vy356, align 16, !tbaa !10
  %497 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %498 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call389 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %498)
  %call390 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %497, <2 x i64> noundef %call389)
  store <2 x i64> %call390, ptr %vx354, align 16, !tbaa !10
  %499 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %500 = load <4 x i64>, ptr %vtable7, align 32, !tbaa !10
  %call391 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %500)
  %501 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call392 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call391, <2 x i64> noundef %501)
  %call393 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %499, <2 x i64> noundef %call392)
  store <2 x i64> %call393, ptr %vy356, align 16, !tbaa !10
  %502 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %503 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call394 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %503)
  %call395 = call <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %502, <2 x i64> noundef %call394)
  store <2 x i64> %call395, ptr %vx354, align 16, !tbaa !10
  %504 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %505 = load <4 x i64>, ptr %vtable8, align 32, !tbaa !10
  %call396 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %505)
  %506 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call397 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call396, <2 x i64> noundef %506)
  %call398 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %504, <2 x i64> noundef %call397)
  store <2 x i64> %call398, ptr %vy356, align 16, !tbaa !10
  %507 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %508 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call399 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %508)
  %call400 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %507, <2 x i64> noundef %call399)
  store <2 x i64> %call400, ptr %vx354, align 16, !tbaa !10
  %509 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %510 = load <4 x i64>, ptr %vtable9, align 32, !tbaa !10
  %call401 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %510)
  %511 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call402 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call401, <2 x i64> noundef %511)
  %call403 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %509, <2 x i64> noundef %call402)
  store <2 x i64> %call403, ptr %vy356, align 16, !tbaa !10
  %512 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %513 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call404 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %513)
  %call405 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %512, <2 x i64> noundef %call404)
  store <2 x i64> %call405, ptr %vx354, align 16, !tbaa !10
  %514 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %515 = load <4 x i64>, ptr %vtableA, align 32, !tbaa !10
  %call406 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %515)
  %516 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call407 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call406, <2 x i64> noundef %516)
  %call408 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %514, <2 x i64> noundef %call407)
  store <2 x i64> %call408, ptr %vy356, align 16, !tbaa !10
  %517 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %518 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call409 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %518)
  %call410 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %517, <2 x i64> noundef %call409)
  store <2 x i64> %call410, ptr %vx354, align 16, !tbaa !10
  %519 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %520 = load <4 x i64>, ptr %vtableB, align 32, !tbaa !10
  %call411 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %520)
  %521 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call412 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call411, <2 x i64> noundef %521)
  %call413 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %519, <2 x i64> noundef %call412)
  store <2 x i64> %call413, ptr %vy356, align 16, !tbaa !10
  %522 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %523 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call414 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %523)
  %call415 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %522, <2 x i64> noundef %call414)
  store <2 x i64> %call415, ptr %vx354, align 16, !tbaa !10
  %524 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %525 = load <4 x i64>, ptr %vtableC, align 32, !tbaa !10
  %call416 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %525)
  %526 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call417 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call416, <2 x i64> noundef %526)
  %call418 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %524, <2 x i64> noundef %call417)
  store <2 x i64> %call418, ptr %vy356, align 16, !tbaa !10
  %527 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %528 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call419 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %528)
  %call420 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %527, <2 x i64> noundef %call419)
  store <2 x i64> %call420, ptr %vx354, align 16, !tbaa !10
  %529 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %530 = load <4 x i64>, ptr %vtableD, align 32, !tbaa !10
  %call421 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %530)
  %531 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call422 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call421, <2 x i64> noundef %531)
  %call423 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %529, <2 x i64> noundef %call422)
  store <2 x i64> %call423, ptr %vy356, align 16, !tbaa !10
  %532 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %533 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call424 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %533)
  %call425 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %532, <2 x i64> noundef %call424)
  store <2 x i64> %call425, ptr %vx354, align 16, !tbaa !10
  %534 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %535 = load <4 x i64>, ptr %vtableE, align 32, !tbaa !10
  %call426 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %535)
  %536 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call427 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call426, <2 x i64> noundef %536)
  %call428 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %534, <2 x i64> noundef %call427)
  store <2 x i64> %call428, ptr %vy356, align 16, !tbaa !10
  %537 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %538 = load <4 x i64>, ptr %voffset, align 32, !tbaa !10
  %call429 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %538)
  %call430 = call <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %537, <2 x i64> noundef %call429)
  store <2 x i64> %call430, ptr %vx354, align 16, !tbaa !10
  %539 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %540 = load <4 x i64>, ptr %vtableF, align 32, !tbaa !10
  %call431 = call <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %540)
  %541 = load <2 x i64>, ptr %vx354, align 16, !tbaa !10
  %call432 = call <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %call431, <2 x i64> noundef %541)
  %call433 = call <2 x i64> @_mm_xor_si128(<2 x i64> noundef %539, <2 x i64> noundef %call432)
  store <2 x i64> %call433, ptr %vy356, align 16, !tbaa !10
  %542 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and = and i64 %542, 8
  %tobool434 = icmp ne i64 %and, 0
  br i1 %tobool434, label %if.then435, label %if.end

if.then435:                                       ; preds = %if.then
  %543 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %544 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  call void @_mm_storel_epi64(ptr noundef %543, <2 x i64> noundef %544)
  %545 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %546 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %call436 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %545, <2 x i64> noundef %546)
  store <2 x i64> %call436, ptr %vy356, align 16, !tbaa !10
  %547 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr437 = getelementptr inbounds i8, ptr %547, i64 8
  store ptr %add.ptr437, ptr %y.addr, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then435, %if.then
  %548 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and438 = and i64 %548, 4
  %tobool439 = icmp ne i64 %and438, 0
  br i1 %tobool439, label %if.then440, label %if.end443

if.then440:                                       ; preds = %if.end
  %549 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %550 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  call void @_mm_storeu_si32(ptr noundef %549, <2 x i64> noundef %550)
  %551 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %call441 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %551, i32 noundef 32)
  store <2 x i64> %call441, ptr %vy356, align 16, !tbaa !10
  %552 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr442 = getelementptr inbounds i8, ptr %552, i64 4
  store ptr %add.ptr442, ptr %y.addr, align 8, !tbaa !8
  br label %if.end443

if.end443:                                        ; preds = %if.then440, %if.end
  %553 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and444 = and i64 %553, 2
  %tobool445 = icmp ne i64 %and444, 0
  br i1 %tobool445, label %if.then446, label %if.end451

if.then446:                                       ; preds = %if.end443
  %554 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %555 = bitcast <2 x i64> %554 to <8 x i16>
  %556 = extractelement <8 x i16> %555, i64 0
  %conv447 = zext i16 %556 to i32
  %conv448 = trunc i32 %conv447 to i16
  %557 = load ptr, ptr %y.addr, align 8, !tbaa !8
  store i16 %conv448, ptr %557, align 2, !tbaa !11
  %558 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %call449 = call <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %558, i32 noundef 16)
  store <2 x i64> %call449, ptr %vy356, align 16, !tbaa !10
  %559 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr450 = getelementptr inbounds i8, ptr %559, i64 2
  store ptr %add.ptr450, ptr %y.addr, align 8, !tbaa !8
  br label %if.end451

if.end451:                                        ; preds = %if.then446, %if.end443
  %560 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and452 = and i64 %560, 1
  %tobool453 = icmp ne i64 %and452, 0
  br i1 %tobool453, label %if.then454, label %if.end457

if.then454:                                       ; preds = %if.end451
  %561 = load <2 x i64>, ptr %vy356, align 16, !tbaa !10
  %562 = bitcast <2 x i64> %561 to <16 x i8>
  %563 = extractelement <16 x i8> %562, i64 0
  %conv455 = zext i8 %563 to i32
  %conv456 = trunc i32 %conv455 to i8
  %564 = load ptr, ptr %y.addr, align 8, !tbaa !8
  store i8 %conv456, ptr %564, align 1, !tbaa !10
  br label %if.end457

if.end457:                                        ; preds = %if.then454, %if.end451
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy356) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx354) #6
  br label %if.end458

if.end458:                                        ; preds = %if.end457, %for.end351
  call void @llvm.lifetime.end.p0(i64 32, ptr %voffset) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtableF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtableE) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtableD) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtableC) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtableB) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtableA) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable7) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable5) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable4) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtable0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtE) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtD) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtC) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtB) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vtA) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt9) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt7) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt5) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt4) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vt0) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_broadcastsi128_si256(<2 x i64> noundef %__X) #2 {
entry:
  %__X.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__X, ptr %__X.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__X.addr, align 16, !tbaa !10
  %1 = load <2 x i64>, ptr %__X.addr, align 16, !tbaa !10
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  ret <4 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_load_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <2 x i64>, ptr %0, align 16, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_xor_si256(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !10
  %xor = xor <4 x i64> %0, %1
  ret <4 x i64> %xor
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set1_epi8(i8 noundef signext %__b) #2 {
entry:
  %__b.addr = alloca i8, align 1
  store i8 %__b, ptr %__b.addr, align 1, !tbaa !10
  %0 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %1 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %2 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %3 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %4 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %5 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %6 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %7 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %8 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %9 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %10 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %11 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %12 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %13 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %14 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %15 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %16 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %17 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %18 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %19 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %20 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %21 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %22 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %23 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %24 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %25 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %26 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %27 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %28 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %29 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %30 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %31 = load i8, ptr %__b.addr, align 1, !tbaa !10
  %call = call <4 x i64> @_mm256_set_epi8(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3, i8 noundef signext %4, i8 noundef signext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, i8 noundef signext %11, i8 noundef signext %12, i8 noundef signext %13, i8 noundef signext %14, i8 noundef signext %15, i8 noundef signext %16, i8 noundef signext %17, i8 noundef signext %18, i8 noundef signext %19, i8 noundef signext %20, i8 noundef signext %21, i8 noundef signext %22, i8 noundef signext %23, i8 noundef signext %24, i8 noundef signext %25, i8 noundef signext %26, i8 noundef signext %27, i8 noundef signext %28, i8 noundef signext %29, i8 noundef signext %30, i8 noundef signext %31)
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_loadu_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si256, ptr %0, i32 0, i32 0
  %1 = load <4 x i64>, ptr %__v, align 1, !tbaa !10
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_shuffle_epi8(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %1 = bitcast <4 x i64> %0 to <32 x i8>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !10
  %3 = bitcast <4 x i64> %2 to <32 x i8>
  %4 = call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> %1, <32 x i8> %3)
  %5 = bitcast <32 x i8> %4 to <4 x i64>
  ret <4 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_sub_epi8(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %1 = bitcast <4 x i64> %0 to <32 x i8>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !10
  %3 = bitcast <4 x i64> %2 to <32 x i8>
  %sub = sub <32 x i8> %1, %3
  %4 = bitcast <32 x i8> %sub to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_subs_epi8(<4 x i64> noundef %__a, <4 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  %__b.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !10
  store <4 x i64> %__b, ptr %__b.addr, align 32, !tbaa !10
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %1 = bitcast <4 x i64> %0 to <32 x i8>
  %2 = load <4 x i64>, ptr %__b.addr, align 32, !tbaa !10
  %3 = bitcast <4 x i64> %2 to <32 x i8>
  %elt.sat = call <32 x i8> @llvm.ssub.sat.v32i8(<32 x i8> %1, <32 x i8> %3)
  %4 = bitcast <32 x i8> %elt.sat to <4 x i64>
  ret <4 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_storeu_si256(ptr noundef %__p, <4 x i64> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x i64>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !10
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_si256, ptr %1, i32 0, i32 0
  store <4 x i64> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_shuffle_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %4 = call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %1, <16 x i8> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm256_castsi256_si128(<4 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <4 x i64>, align 32
  store <4 x i64> %__a, ptr %__a.addr, align 32, !tbaa !10
  %0 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <4 x i64>, ptr %__a.addr, align 32, !tbaa !10
  %shuffle = shufflevector <4 x i64> %0, <4 x i64> %1, <2 x i32> <i32 0, i32 1>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_sub_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %sub = sub <16 x i8> %1, %3
  %4 = bitcast <16 x i8> %sub to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_xor_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %xor = xor <2 x i64> %0, %1
  ret <2 x i64> %xor
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_subs_epi8(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %elt.sat = call <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8> %1, <16 x i8> %3)
  %4 = bitcast <16 x i8> %elt.sat to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si32(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %vecext = extractelement <4 x i32> %1, i32 0
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_si32, ptr %2, i32 0, i32 0
  store i32 %vecext, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !13
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi32(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !13
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load i32, ptr %__count.addr, align 4, !tbaa !13
  %3 = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %1, i32 %2)
  %4 = bitcast <4 x i32> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_set_epi8(i8 noundef signext %__b31, i8 noundef signext %__b30, i8 noundef signext %__b29, i8 noundef signext %__b28, i8 noundef signext %__b27, i8 noundef signext %__b26, i8 noundef signext %__b25, i8 noundef signext %__b24, i8 noundef signext %__b23, i8 noundef signext %__b22, i8 noundef signext %__b21, i8 noundef signext %__b20, i8 noundef signext %__b19, i8 noundef signext %__b18, i8 noundef signext %__b17, i8 noundef signext %__b16, i8 noundef signext %__b15, i8 noundef signext %__b14, i8 noundef signext %__b13, i8 noundef signext %__b12, i8 noundef signext %__b11, i8 noundef signext %__b10, i8 noundef signext %__b09, i8 noundef signext %__b08, i8 noundef signext %__b07, i8 noundef signext %__b06, i8 noundef signext %__b05, i8 noundef signext %__b04, i8 noundef signext %__b03, i8 noundef signext %__b02, i8 noundef signext %__b01, i8 noundef signext %__b00) #2 {
entry:
  %__b31.addr = alloca i8, align 1
  %__b30.addr = alloca i8, align 1
  %__b29.addr = alloca i8, align 1
  %__b28.addr = alloca i8, align 1
  %__b27.addr = alloca i8, align 1
  %__b26.addr = alloca i8, align 1
  %__b25.addr = alloca i8, align 1
  %__b24.addr = alloca i8, align 1
  %__b23.addr = alloca i8, align 1
  %__b22.addr = alloca i8, align 1
  %__b21.addr = alloca i8, align 1
  %__b20.addr = alloca i8, align 1
  %__b19.addr = alloca i8, align 1
  %__b18.addr = alloca i8, align 1
  %__b17.addr = alloca i8, align 1
  %__b16.addr = alloca i8, align 1
  %__b15.addr = alloca i8, align 1
  %__b14.addr = alloca i8, align 1
  %__b13.addr = alloca i8, align 1
  %__b12.addr = alloca i8, align 1
  %__b11.addr = alloca i8, align 1
  %__b10.addr = alloca i8, align 1
  %__b09.addr = alloca i8, align 1
  %__b08.addr = alloca i8, align 1
  %__b07.addr = alloca i8, align 1
  %__b06.addr = alloca i8, align 1
  %__b05.addr = alloca i8, align 1
  %__b04.addr = alloca i8, align 1
  %__b03.addr = alloca i8, align 1
  %__b02.addr = alloca i8, align 1
  %__b01.addr = alloca i8, align 1
  %__b00.addr = alloca i8, align 1
  %.compoundliteral = alloca <32 x i8>, align 32
  store i8 %__b31, ptr %__b31.addr, align 1, !tbaa !10
  store i8 %__b30, ptr %__b30.addr, align 1, !tbaa !10
  store i8 %__b29, ptr %__b29.addr, align 1, !tbaa !10
  store i8 %__b28, ptr %__b28.addr, align 1, !tbaa !10
  store i8 %__b27, ptr %__b27.addr, align 1, !tbaa !10
  store i8 %__b26, ptr %__b26.addr, align 1, !tbaa !10
  store i8 %__b25, ptr %__b25.addr, align 1, !tbaa !10
  store i8 %__b24, ptr %__b24.addr, align 1, !tbaa !10
  store i8 %__b23, ptr %__b23.addr, align 1, !tbaa !10
  store i8 %__b22, ptr %__b22.addr, align 1, !tbaa !10
  store i8 %__b21, ptr %__b21.addr, align 1, !tbaa !10
  store i8 %__b20, ptr %__b20.addr, align 1, !tbaa !10
  store i8 %__b19, ptr %__b19.addr, align 1, !tbaa !10
  store i8 %__b18, ptr %__b18.addr, align 1, !tbaa !10
  store i8 %__b17, ptr %__b17.addr, align 1, !tbaa !10
  store i8 %__b16, ptr %__b16.addr, align 1, !tbaa !10
  store i8 %__b15, ptr %__b15.addr, align 1, !tbaa !10
  store i8 %__b14, ptr %__b14.addr, align 1, !tbaa !10
  store i8 %__b13, ptr %__b13.addr, align 1, !tbaa !10
  store i8 %__b12, ptr %__b12.addr, align 1, !tbaa !10
  store i8 %__b11, ptr %__b11.addr, align 1, !tbaa !10
  store i8 %__b10, ptr %__b10.addr, align 1, !tbaa !10
  store i8 %__b09, ptr %__b09.addr, align 1, !tbaa !10
  store i8 %__b08, ptr %__b08.addr, align 1, !tbaa !10
  store i8 %__b07, ptr %__b07.addr, align 1, !tbaa !10
  store i8 %__b06, ptr %__b06.addr, align 1, !tbaa !10
  store i8 %__b05, ptr %__b05.addr, align 1, !tbaa !10
  store i8 %__b04, ptr %__b04.addr, align 1, !tbaa !10
  store i8 %__b03, ptr %__b03.addr, align 1, !tbaa !10
  store i8 %__b02, ptr %__b02.addr, align 1, !tbaa !10
  store i8 %__b01, ptr %__b01.addr, align 1, !tbaa !10
  store i8 %__b00, ptr %__b00.addr, align 1, !tbaa !10
  %0 = load i8, ptr %__b00.addr, align 1, !tbaa !10
  %vecinit = insertelement <32 x i8> undef, i8 %0, i32 0
  %1 = load i8, ptr %__b01.addr, align 1, !tbaa !10
  %vecinit1 = insertelement <32 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, ptr %__b02.addr, align 1, !tbaa !10
  %vecinit2 = insertelement <32 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, ptr %__b03.addr, align 1, !tbaa !10
  %vecinit3 = insertelement <32 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, ptr %__b04.addr, align 1, !tbaa !10
  %vecinit4 = insertelement <32 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, ptr %__b05.addr, align 1, !tbaa !10
  %vecinit5 = insertelement <32 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, ptr %__b06.addr, align 1, !tbaa !10
  %vecinit6 = insertelement <32 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, ptr %__b07.addr, align 1, !tbaa !10
  %vecinit7 = insertelement <32 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, ptr %__b08.addr, align 1, !tbaa !10
  %vecinit8 = insertelement <32 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, ptr %__b09.addr, align 1, !tbaa !10
  %vecinit9 = insertelement <32 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, ptr %__b10.addr, align 1, !tbaa !10
  %vecinit10 = insertelement <32 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, ptr %__b11.addr, align 1, !tbaa !10
  %vecinit11 = insertelement <32 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, ptr %__b12.addr, align 1, !tbaa !10
  %vecinit12 = insertelement <32 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, ptr %__b13.addr, align 1, !tbaa !10
  %vecinit13 = insertelement <32 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, ptr %__b14.addr, align 1, !tbaa !10
  %vecinit14 = insertelement <32 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, ptr %__b15.addr, align 1, !tbaa !10
  %vecinit15 = insertelement <32 x i8> %vecinit14, i8 %15, i32 15
  %16 = load i8, ptr %__b16.addr, align 1, !tbaa !10
  %vecinit16 = insertelement <32 x i8> %vecinit15, i8 %16, i32 16
  %17 = load i8, ptr %__b17.addr, align 1, !tbaa !10
  %vecinit17 = insertelement <32 x i8> %vecinit16, i8 %17, i32 17
  %18 = load i8, ptr %__b18.addr, align 1, !tbaa !10
  %vecinit18 = insertelement <32 x i8> %vecinit17, i8 %18, i32 18
  %19 = load i8, ptr %__b19.addr, align 1, !tbaa !10
  %vecinit19 = insertelement <32 x i8> %vecinit18, i8 %19, i32 19
  %20 = load i8, ptr %__b20.addr, align 1, !tbaa !10
  %vecinit20 = insertelement <32 x i8> %vecinit19, i8 %20, i32 20
  %21 = load i8, ptr %__b21.addr, align 1, !tbaa !10
  %vecinit21 = insertelement <32 x i8> %vecinit20, i8 %21, i32 21
  %22 = load i8, ptr %__b22.addr, align 1, !tbaa !10
  %vecinit22 = insertelement <32 x i8> %vecinit21, i8 %22, i32 22
  %23 = load i8, ptr %__b23.addr, align 1, !tbaa !10
  %vecinit23 = insertelement <32 x i8> %vecinit22, i8 %23, i32 23
  %24 = load i8, ptr %__b24.addr, align 1, !tbaa !10
  %vecinit24 = insertelement <32 x i8> %vecinit23, i8 %24, i32 24
  %25 = load i8, ptr %__b25.addr, align 1, !tbaa !10
  %vecinit25 = insertelement <32 x i8> %vecinit24, i8 %25, i32 25
  %26 = load i8, ptr %__b26.addr, align 1, !tbaa !10
  %vecinit26 = insertelement <32 x i8> %vecinit25, i8 %26, i32 26
  %27 = load i8, ptr %__b27.addr, align 1, !tbaa !10
  %vecinit27 = insertelement <32 x i8> %vecinit26, i8 %27, i32 27
  %28 = load i8, ptr %__b28.addr, align 1, !tbaa !10
  %vecinit28 = insertelement <32 x i8> %vecinit27, i8 %28, i32 28
  %29 = load i8, ptr %__b29.addr, align 1, !tbaa !10
  %vecinit29 = insertelement <32 x i8> %vecinit28, i8 %29, i32 29
  %30 = load i8, ptr %__b30.addr, align 1, !tbaa !10
  %vecinit30 = insertelement <32 x i8> %vecinit29, i8 %30, i32 30
  %31 = load i8, ptr %__b31.addr, align 1, !tbaa !10
  %vecinit31 = insertelement <32 x i8> %vecinit30, i8 %31, i32 31
  store <32 x i8> %vecinit31, ptr %.compoundliteral, align 32, !tbaa !10
  %32 = load <32 x i8>, ptr %.compoundliteral, align 32, !tbaa !10
  %33 = bitcast <32 x i8> %32 to <4 x i64>
  ret <4 x i64> %33
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8>, <32 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.ssub.sat.v32i8(<32 x i8>, <32 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8>, <16 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.ssub.sat.v16i8(<16 x i8>, <16 x i8>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !6, i64 0}
