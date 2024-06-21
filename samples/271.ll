; ModuleID = 'samples/271.bc'
source_filename = "/local-ssd/spglib-6qj4izjfqnmoye3ypa77dclkkisopbnr-build/aidengro/spack-stage-spglib-2.1.0-6qj4izjfqnmoye3ypa77dclkkisopbnr/spack-src/src/refinement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cell = type { i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.Spacegroup = type { i32, i32, i32, [7 x i8], [17 x i8], [32 x i8], [20 x i8], [11 x i8], [6 x i8], [3 x [3 x double]], [3 x double] }
%struct.ExactStructure = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x [3 x double]] }
%struct.Symmetry = type { i32, ptr, ptr }
%struct.MatINT = type { i32, ptr }
%struct.VecDBL = type { i32, ptr }
%struct.Pointgroup = type { i32, [6 x i8], [4 x i8], i32, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"spglib: Memory could not be allocated.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"spglib: Memory could not be allocated \00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"spglib: get_bravais_exact_positions_and_lattice failed.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" (line %d, %s).\0A\00", align 1
@.str.4 = private unnamed_addr constant [151 x i8] c"/local-ssd/spglib-6qj4izjfqnmoye3ypa77dclkkisopbnr-build/aidengro/spack-stage-spglib-2.1.0-6qj4izjfqnmoye3ypa77dclkkisopbnr/spack-src/src/refinement.c\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"spglib: set_crystallographic_orbits failed.\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"spglib: ssm_get_exact_positions failed.\00", align 1
@identity = internal constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 0], [3 x i32] [i32 0, i32 1, i32 0], [3 x i32] [i32 0, i32 0, i32 1]], align 16
@.str.7 = private unnamed_addr constant [51 x i8] c"spglib: Monoclinic unique axis could not be found.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @ref_get_exact_structure_and_symmetry(ptr noundef %spacegroup, ptr noundef %primitive, ptr noundef %cell, ptr noundef %mapping_table, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %spacegroup.addr = alloca ptr, align 8
  %primitive.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %mapping_table.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %std_mapping_to_primitive = alloca ptr, align 8
  %wyckoffs = alloca ptr, align 8
  %equivalent_atoms = alloca ptr, align 8
  %crystallographic_orbits = alloca ptr, align 8
  %rotation = alloca [3 x [3 x double]], align 16
  %bravais = alloca ptr, align 8
  %symmetry = alloca ptr, align 8
  %exact_structure = alloca ptr, align 8
  %site_symmetry_symbols = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  store ptr %primitive, ptr %primitive.addr, align 8, !tbaa !5
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %mapping_table, ptr %mapping_table.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %std_mapping_to_primitive) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %wyckoffs) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %equivalent_atoms) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %crystallographic_orbits) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %rotation) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %bravais) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %symmetry) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %exact_structure) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_symmetry_symbols) #7
  store ptr null, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  store ptr null, ptr %wyckoffs, align 8, !tbaa !5
  store ptr null, ptr %site_symmetry_symbols, align 8, !tbaa !5
  store ptr null, ptr %equivalent_atoms, align 8, !tbaa !5
  store ptr null, ptr %crystallographic_orbits, align 8, !tbaa !5
  store ptr null, ptr %bravais, align 8, !tbaa !5
  store ptr null, ptr %symmetry, align 8, !tbaa !5
  store ptr null, ptr %exact_structure, align 8, !tbaa !5
  %0 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %1 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call = call i32 @ref_find_similar_bravais_lattice(ptr noundef %0, double noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %err

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %5 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call1 = call ptr @get_refined_symmetry_operations(ptr noundef %2, ptr noundef %3, ptr noundef %4, double noundef %5)
  store ptr %call1, ptr %symmetry, align 8, !tbaa !5
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %err

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %size, align 8, !tbaa !11
  %conv = sext i32 %7 to i64
  %mul = mul i64 4, %conv
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call4, ptr %wyckoffs, align 8, !tbaa !5
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str)
  br label %err

if.end9:                                          ; preds = %if.end3
  %9 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size10 = getelementptr inbounds %struct.Cell, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %size10, align 8, !tbaa !11
  %conv11 = sext i32 %10 to i64
  %mul12 = mul i64 7, %conv11
  %call13 = call noalias ptr @malloc(i64 noundef %mul12) #8
  store ptr %call13, ptr %site_symmetry_symbols, align 8, !tbaa !5
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end9
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str)
  br label %err

if.end18:                                         ; preds = %if.end9
  %12 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size19 = getelementptr inbounds %struct.Cell, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %size19, align 8, !tbaa !11
  %conv20 = sext i32 %13 to i64
  %mul21 = mul i64 4, %conv20
  %call22 = call noalias ptr @malloc(i64 noundef %mul21) #8
  store ptr %call22, ptr %equivalent_atoms, align 8, !tbaa !5
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end18
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str)
  br label %err

if.end27:                                         ; preds = %if.end18
  %15 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size28 = getelementptr inbounds %struct.Cell, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %size28, align 8, !tbaa !11
  %conv29 = sext i32 %16 to i64
  %mul30 = mul i64 4, %conv29
  %call31 = call noalias ptr @malloc(i64 noundef %mul30) #8
  store ptr %call31, ptr %crystallographic_orbits, align 8, !tbaa !5
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end27
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str)
  br label %err

if.end36:                                         ; preds = %if.end27
  %18 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size37 = getelementptr inbounds %struct.Cell, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %size37, align 8, !tbaa !11
  %conv38 = sext i32 %19 to i64
  %mul39 = mul i64 4, %conv38
  %mul40 = mul i64 %mul39, 4
  %call41 = call noalias ptr @malloc(i64 noundef %mul40) #8
  store ptr %call41, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end36
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str)
  br label %err

if.end46:                                         ; preds = %if.end36
  %21 = load ptr, ptr %wyckoffs, align 8, !tbaa !5
  %22 = load ptr, ptr %site_symmetry_symbols, align 8, !tbaa !5
  %23 = load ptr, ptr %equivalent_atoms, align 8, !tbaa !5
  %24 = load ptr, ptr %crystallographic_orbits, align 8, !tbaa !5
  %25 = load ptr, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  %26 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %30 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %31 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call47 = call ptr @get_Wyckoff_positions(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, double noundef %31)
  store ptr %call47, ptr %bravais, align 8, !tbaa !5
  %cmp48 = icmp eq ptr %call47, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end46
  %32 = load ptr, ptr %symmetry, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %32)
  store ptr null, ptr %symmetry, align 8, !tbaa !5
  br label %err

if.end51:                                         ; preds = %if.end46
  %call52 = call noalias ptr @malloc(i64 noundef 128) #8
  store ptr %call52, ptr %exact_structure, align 8, !tbaa !5
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end51
  %33 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str)
  %34 = load ptr, ptr %symmetry, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %34)
  store ptr null, ptr %symmetry, align 8, !tbaa !5
  %35 = load ptr, ptr %bravais, align 8, !tbaa !5
  call void @cel_free_cell(ptr noundef %35)
  store ptr null, ptr %bravais, align 8, !tbaa !5
  br label %err

if.end57:                                         ; preds = %if.end51
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %rotation, i64 0, i64 0
  %36 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice = getelementptr inbounds %struct.Spacegroup, ptr %36, i32 0, i32 9
  %arraydecay58 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice, i64 0, i64 0
  %37 = load ptr, ptr %bravais, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %lattice, align 8, !tbaa !14
  call void @ref_measure_rigid_rotation(ptr noundef %arraydecay, ptr noundef %arraydecay58, ptr noundef %38)
  %39 = load ptr, ptr %bravais, align 8, !tbaa !5
  %40 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %bravais59 = getelementptr inbounds %struct.ExactStructure, ptr %40, i32 0, i32 0
  store ptr %39, ptr %bravais59, align 8, !tbaa !15
  %41 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %42 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %symmetry60 = getelementptr inbounds %struct.ExactStructure, ptr %42, i32 0, i32 1
  store ptr %41, ptr %symmetry60, align 8, !tbaa !17
  %43 = load ptr, ptr %wyckoffs, align 8, !tbaa !5
  %44 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %wyckoffs61 = getelementptr inbounds %struct.ExactStructure, ptr %44, i32 0, i32 2
  store ptr %43, ptr %wyckoffs61, align 8, !tbaa !18
  %45 = load ptr, ptr %site_symmetry_symbols, align 8, !tbaa !5
  %46 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %site_symmetry_symbols62 = getelementptr inbounds %struct.ExactStructure, ptr %46, i32 0, i32 3
  store ptr %45, ptr %site_symmetry_symbols62, align 8, !tbaa !19
  %47 = load ptr, ptr %equivalent_atoms, align 8, !tbaa !5
  %48 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %equivalent_atoms63 = getelementptr inbounds %struct.ExactStructure, ptr %48, i32 0, i32 4
  store ptr %47, ptr %equivalent_atoms63, align 8, !tbaa !20
  %49 = load ptr, ptr %crystallographic_orbits, align 8, !tbaa !5
  %50 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %crystallographic_orbits64 = getelementptr inbounds %struct.ExactStructure, ptr %50, i32 0, i32 5
  store ptr %49, ptr %crystallographic_orbits64, align 8, !tbaa !21
  %51 = load ptr, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  %52 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %std_mapping_to_primitive65 = getelementptr inbounds %struct.ExactStructure, ptr %52, i32 0, i32 6
  store ptr %51, ptr %std_mapping_to_primitive65, align 8, !tbaa !22
  %53 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  %rotation66 = getelementptr inbounds %struct.ExactStructure, ptr %53, i32 0, i32 7
  %arraydecay67 = getelementptr inbounds [3 x [3 x double]], ptr %rotation66, i64 0, i64 0
  %arraydecay68 = getelementptr inbounds [3 x [3 x double]], ptr %rotation, i64 0, i64 0
  call void @mat_copy_matrix_d3(ptr noundef %arraydecay67, ptr noundef %arraydecay68)
  %54 = load ptr, ptr %exact_structure, align 8, !tbaa !5
  store ptr %54, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

err:                                              ; preds = %if.then55, %if.then50, %if.then44, %if.then34, %if.then25, %if.then16, %if.then7, %if.then2, %if.then
  %55 = load ptr, ptr %wyckoffs, align 8, !tbaa !5
  %cmp69 = icmp ne ptr %55, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %err
  %56 = load ptr, ptr %wyckoffs, align 8, !tbaa !5
  call void @free(ptr noundef %56) #7
  store ptr null, ptr %wyckoffs, align 8, !tbaa !5
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %err
  %57 = load ptr, ptr %site_symmetry_symbols, align 8, !tbaa !5
  %cmp73 = icmp ne ptr %57, null
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end72
  %58 = load ptr, ptr %site_symmetry_symbols, align 8, !tbaa !5
  call void @free(ptr noundef %58) #7
  store ptr null, ptr %site_symmetry_symbols, align 8, !tbaa !5
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end72
  %59 = load ptr, ptr %equivalent_atoms, align 8, !tbaa !5
  %cmp77 = icmp ne ptr %59, null
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end76
  %60 = load ptr, ptr %equivalent_atoms, align 8, !tbaa !5
  call void @free(ptr noundef %60) #7
  store ptr null, ptr %equivalent_atoms, align 8, !tbaa !5
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end76
  %61 = load ptr, ptr %crystallographic_orbits, align 8, !tbaa !5
  %cmp81 = icmp ne ptr %61, null
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end80
  %62 = load ptr, ptr %crystallographic_orbits, align 8, !tbaa !5
  call void @free(ptr noundef %62) #7
  store ptr null, ptr %crystallographic_orbits, align 8, !tbaa !5
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end80
  %63 = load ptr, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  %cmp85 = icmp ne ptr %63, null
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end84
  %64 = load ptr, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  call void @free(ptr noundef %64) #7
  store ptr null, ptr %std_mapping_to_primitive, align 8, !tbaa !5
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.end57
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_symmetry_symbols) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %exact_structure) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %symmetry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bravais) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %rotation) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %crystallographic_orbits) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %equivalent_atoms) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %wyckoffs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %std_mapping_to_primitive) #7
  %65 = load ptr, ptr %retval, align 8
  ret ptr %65
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @ref_find_similar_bravais_lattice(ptr noundef %spacegroup, double noundef %symprec) #0 {
entry:
  %retval = alloca i32, align 4
  %spacegroup.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %rot_i = alloca i32, align 4
  %lattice_rank = alloca i32, align 4
  %conv_sym = alloca ptr, align 8
  %min_length2 = alloca double, align 8
  %length2 = alloca double, align 8
  %diff = alloca double, align 8
  %min_length = alloca double, align 8
  %length = alloca double, align 8
  %tmp_mat = alloca [3 x [3 x double]], align 16
  %std_lattice = alloca [3 x [3 x double]], align 16
  %rot_lat = alloca [3 x [3 x double]], align 16
  %p = alloca [3 x double], align 16
  %shortest_p = alloca [3 x double], align 16
  %tmp_vec = alloca [3 x double], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %rot_i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lattice_rank) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conv_sym) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_length2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %length2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_length) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %std_lattice) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %rot_lat) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %p) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %shortest_p) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp_vec) #7
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  %0 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number = getelementptr inbounds %struct.Spacegroup, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %hall_number, align 4, !tbaa !23
  %call = call ptr @spgdb_get_spacegroup_operations(i32 noundef %1)
  store ptr %call, ptr %conv_sym, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %std_lattice, i64 0, i64 0
  %2 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  call void @ref_get_conventional_lattice(ptr noundef %arraydecay, ptr noundef %2)
  store double 0.000000e+00, ptr %min_length2, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !25
  %cmp1 = icmp slt i32 %3, 3
  br i1 %cmp1, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !tbaa !25
  %cmp3 = icmp slt i32 %4, 3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice = getelementptr inbounds %struct.Spacegroup, ptr %5, i32 0, i32 9
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 %idxprom5
  %8 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %9 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice7 = getelementptr inbounds %struct.Spacegroup, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice7, i64 0, i64 %idxprom8
  %11 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  %12 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %13 = load double, ptr %min_length2, align 8, !tbaa !9
  %14 = call double @llvm.fmuladd.f64(double %8, double %12, double %13)
  store double %14, ptr %min_length2, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %15 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond2, !llvm.loop !26

for.end:                                          ; preds = %for.cond2
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !25
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !28

for.end14:                                        ; preds = %for.cond
  %17 = load double, ptr %min_length2, align 8, !tbaa !9
  %call15 = call double @sqrt(double noundef %17) #7
  store double %call15, ptr %min_length, align 8, !tbaa !9
  store i32 -1, ptr %rot_i, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc60, %for.end14
  %18 = load i32, ptr %i, align 4, !tbaa !25
  %19 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %size, align 8, !tbaa !29
  %cmp17 = icmp slt i32 %18, %20
  br i1 %cmp17, label %for.body18, label %for.end62

for.body18:                                       ; preds = %for.cond16
  %21 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %rot, align 8, !tbaa !31
  %23 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [3 x [3 x i32]], ptr %22, i64 %idxprom19
  %arraydecay21 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx20, i64 0, i64 0
  %call22 = call i32 @mat_get_determinant_i3(ptr noundef %arraydecay21)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body18
  br label %for.inc60

if.end25:                                         ; preds = %for.body18
  %arraydecay26 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %24 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice27 = getelementptr inbounds %struct.Spacegroup, ptr %24, i32 0, i32 9
  %arraydecay28 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice27, i64 0, i64 0
  %25 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %rot29 = getelementptr inbounds %struct.Symmetry, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %rot29, align 8, !tbaa !31
  %27 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [3 x [3 x i32]], ptr %26, i64 %idxprom30
  %arraydecay32 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx31, i64 0, i64 0
  call void @mat_multiply_matrix_di3(ptr noundef %arraydecay26, ptr noundef %arraydecay28, ptr noundef %arraydecay32)
  store double 0.000000e+00, ptr %length2, align 8, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc50, %if.end25
  %28 = load i32, ptr %j, align 4, !tbaa !25
  %cmp34 = icmp slt i32 %28, 3
  br i1 %cmp34, label %for.body35, label %for.end52

for.body35:                                       ; preds = %for.cond33
  store i32 0, ptr %k, align 4, !tbaa !25
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc47, %for.body35
  %29 = load i32, ptr %k, align 4, !tbaa !25
  %cmp37 = icmp slt i32 %29, 3
  br i1 %cmp37, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond36
  %30 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 %idxprom39
  %31 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [3 x double], ptr %arrayidx40, i64 0, i64 %idxprom41
  %32 = load double, ptr %arrayidx42, align 8, !tbaa !9
  %33 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [3 x [3 x double]], ptr %std_lattice, i64 0, i64 %idxprom43
  %34 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %arrayidx44, i64 0, i64 %idxprom45
  %35 = load double, ptr %arrayidx46, align 8, !tbaa !9
  %sub = fsub double %32, %35
  store double %sub, ptr %diff, align 8, !tbaa !9
  %36 = load double, ptr %diff, align 8, !tbaa !9
  %37 = load double, ptr %diff, align 8, !tbaa !9
  %38 = load double, ptr %length2, align 8, !tbaa !9
  %39 = call double @llvm.fmuladd.f64(double %36, double %37, double %38)
  store double %39, ptr %length2, align 8, !tbaa !9
  br label %for.inc47

for.inc47:                                        ; preds = %for.body38
  %40 = load i32, ptr %k, align 4, !tbaa !25
  %inc48 = add nsw i32 %40, 1
  store i32 %inc48, ptr %k, align 4, !tbaa !25
  br label %for.cond36, !llvm.loop !32

for.end49:                                        ; preds = %for.cond36
  br label %for.inc50

for.inc50:                                        ; preds = %for.end49
  %41 = load i32, ptr %j, align 4, !tbaa !25
  %inc51 = add nsw i32 %41, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !25
  br label %for.cond33, !llvm.loop !33

for.end52:                                        ; preds = %for.cond33
  %42 = load double, ptr %length2, align 8, !tbaa !9
  %call53 = call double @sqrt(double noundef %42) #7
  store double %call53, ptr %length, align 8, !tbaa !9
  %43 = load double, ptr %length, align 8, !tbaa !9
  %44 = load double, ptr %min_length, align 8, !tbaa !9
  %45 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %sub54 = fsub double %44, %45
  %cmp55 = fcmp olt double %43, %sub54
  br i1 %cmp55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %for.end52
  %arraydecay57 = getelementptr inbounds [3 x [3 x double]], ptr %rot_lat, i64 0, i64 0
  %arraydecay58 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  call void @mat_copy_matrix_d3(ptr noundef %arraydecay57, ptr noundef %arraydecay58)
  %46 = load i32, ptr %i, align 4, !tbaa !25
  store i32 %46, ptr %rot_i, align 4, !tbaa !25
  %47 = load double, ptr %length, align 8, !tbaa !9
  store double %47, ptr %min_length, align 8, !tbaa !9
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %for.end52
  br label %for.inc60

for.inc60:                                        ; preds = %if.end59, %if.then24
  %48 = load i32, ptr %i, align 4, !tbaa !25
  %inc61 = add nsw i32 %48, 1
  store i32 %inc61, ptr %i, align 4, !tbaa !25
  br label %for.cond16, !llvm.loop !34

for.end62:                                        ; preds = %for.cond16
  store double 2.000000e+00, ptr %min_length, align 8, !tbaa !9
  %49 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number63 = getelementptr inbounds %struct.Spacegroup, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %hall_number63, align 4, !tbaa !23
  %cmp64 = icmp sgt i32 %50, 0
  %51 = zext i1 %cmp64 to i64
  %cond = select i1 %cmp64, i32 3, i32 2
  store i32 %cond, ptr %lattice_rank, align 4, !tbaa !25
  %52 = load i32, ptr %rot_i, align 4, !tbaa !25
  %cmp65 = icmp sgt i32 %52, -1
  br i1 %cmp65, label %if.then66, label %if.end158

if.then66:                                        ; preds = %for.end62
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc149, %if.then66
  %53 = load i32, ptr %i, align 4, !tbaa !25
  %54 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %size68 = getelementptr inbounds %struct.Symmetry, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %size68, align 8, !tbaa !29
  %cmp69 = icmp slt i32 %53, %55
  br i1 %cmp69, label %for.body70, label %for.end151

for.body70:                                       ; preds = %for.cond67
  %56 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %rot71 = getelementptr inbounds %struct.Symmetry, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %rot71, align 8, !tbaa !31
  %58 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom72 = sext i32 %58 to i64
  %arrayidx73 = getelementptr inbounds [3 x [3 x i32]], ptr %57, i64 %idxprom72
  %arraydecay74 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx73, i64 0, i64 0
  %59 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %rot75 = getelementptr inbounds %struct.Symmetry, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %rot75, align 8, !tbaa !31
  %61 = load i32, ptr %rot_i, align 4, !tbaa !25
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [3 x [3 x i32]], ptr %60, i64 %idxprom76
  %arraydecay78 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx77, i64 0, i64 0
  %call79 = call i32 @mat_check_identity_matrix_i3(ptr noundef %arraydecay74, ptr noundef %arraydecay78)
  %tobool = icmp ne i32 %call79, 0
  br i1 %tobool, label %if.end81, label %if.then80

if.then80:                                        ; preds = %for.body70
  br label %for.inc149

if.end81:                                         ; preds = %for.body70
  %arraydecay82 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %62 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %rot83 = getelementptr inbounds %struct.Symmetry, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %rot83, align 8, !tbaa !31
  %64 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom84 = sext i32 %64 to i64
  %arrayidx85 = getelementptr inbounds [3 x [3 x i32]], ptr %63, i64 %idxprom84
  %arraydecay86 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx85, i64 0, i64 0
  call void @mat_cast_matrix_3i_to_3d(ptr noundef %arraydecay82, ptr noundef %arraydecay86)
  %arraydecay87 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %arraydecay88 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %call89 = call i32 @mat_inverse_matrix_d3(ptr noundef %arraydecay87, ptr noundef %arraydecay88, double noundef 0.000000e+00)
  %arraydecay90 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0
  %arraydecay91 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %65 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %origin_shift = getelementptr inbounds %struct.Spacegroup, ptr %65, i32 0, i32 10
  %arraydecay92 = getelementptr inbounds [3 x double], ptr %origin_shift, i64 0, i64 0
  call void @mat_multiply_matrix_vector_d3(ptr noundef %arraydecay90, ptr noundef %arraydecay91, ptr noundef %arraydecay92)
  %arraydecay93 = getelementptr inbounds [3 x double], ptr %tmp_vec, i64 0, i64 0
  %arraydecay94 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %66 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %trans, align 8, !tbaa !35
  %68 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom95 = sext i32 %68 to i64
  %arrayidx96 = getelementptr inbounds [3 x double], ptr %67, i64 %idxprom95
  %arraydecay97 = getelementptr inbounds [3 x double], ptr %arrayidx96, i64 0, i64 0
  call void @mat_multiply_matrix_vector_d3(ptr noundef %arraydecay93, ptr noundef %arraydecay94, ptr noundef %arraydecay97)
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc112, %if.end81
  %69 = load i32, ptr %j, align 4, !tbaa !25
  %70 = load i32, ptr %lattice_rank, align 4, !tbaa !25
  %cmp99 = icmp slt i32 %69, %70
  br i1 %cmp99, label %for.body100, label %for.end114

for.body100:                                      ; preds = %for.cond98
  %71 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom101 = sext i32 %71 to i64
  %arrayidx102 = getelementptr inbounds [3 x double], ptr %tmp_vec, i64 0, i64 %idxprom101
  %72 = load double, ptr %arrayidx102, align 8, !tbaa !9
  %73 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom103 = sext i32 %73 to i64
  %arrayidx104 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 %idxprom103
  %74 = load double, ptr %arrayidx104, align 8, !tbaa !9
  %sub105 = fsub double %74, %72
  store double %sub105, ptr %arrayidx104, align 8, !tbaa !9
  %75 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom106 = sext i32 %75 to i64
  %arrayidx107 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 %idxprom106
  %76 = load double, ptr %arrayidx107, align 8, !tbaa !9
  %call108 = call i32 @mat_Nint(double noundef %76)
  %conv = sitofp i32 %call108 to double
  %77 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom109 = sext i32 %77 to i64
  %arrayidx110 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 %idxprom109
  %78 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %sub111 = fsub double %78, %conv
  store double %sub111, ptr %arrayidx110, align 8, !tbaa !9
  br label %for.inc112

for.inc112:                                       ; preds = %for.body100
  %79 = load i32, ptr %j, align 4, !tbaa !25
  %inc113 = add nsw i32 %79, 1
  store i32 %inc113, ptr %j, align 4, !tbaa !25
  br label %for.cond98, !llvm.loop !36

for.end114:                                       ; preds = %for.cond98
  %80 = load i32, ptr %lattice_rank, align 4, !tbaa !25
  store i32 %80, ptr %j, align 4, !tbaa !25
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc124, %for.end114
  %81 = load i32, ptr %j, align 4, !tbaa !25
  %cmp116 = icmp slt i32 %81, 3
  br i1 %cmp116, label %for.body118, label %for.end126

for.body118:                                      ; preds = %for.cond115
  %82 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom119 = sext i32 %82 to i64
  %arrayidx120 = getelementptr inbounds [3 x double], ptr %tmp_vec, i64 0, i64 %idxprom119
  %83 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %84 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom121 = sext i32 %84 to i64
  %arrayidx122 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 %idxprom121
  %85 = load double, ptr %arrayidx122, align 8, !tbaa !9
  %sub123 = fsub double %85, %83
  store double %sub123, ptr %arrayidx122, align 8, !tbaa !9
  br label %for.inc124

for.inc124:                                       ; preds = %for.body118
  %86 = load i32, ptr %j, align 4, !tbaa !25
  %inc125 = add nsw i32 %86, 1
  store i32 %inc125, ptr %j, align 4, !tbaa !25
  br label %for.cond115, !llvm.loop !37

for.end126:                                       ; preds = %for.cond115
  %arraydecay127 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0
  %call128 = call double @mat_norm_squared_d3(ptr noundef %arraydecay127)
  %call129 = call double @sqrt(double noundef %call128) #7
  store double %call129, ptr %length, align 8, !tbaa !9
  %87 = load double, ptr %length, align 8, !tbaa !9
  %88 = load double, ptr %min_length, align 8, !tbaa !9
  %89 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %sub130 = fsub double %88, %89
  %cmp131 = fcmp olt double %87, %sub130
  br i1 %cmp131, label %if.then133, label %if.end148

if.then133:                                       ; preds = %for.end126
  %90 = load double, ptr %length, align 8, !tbaa !9
  store double %90, ptr %min_length, align 8, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc143, %if.then133
  %91 = load i32, ptr %j, align 4, !tbaa !25
  %92 = load i32, ptr %lattice_rank, align 4, !tbaa !25
  %cmp135 = icmp slt i32 %91, %92
  br i1 %cmp135, label %for.body137, label %for.end145

for.body137:                                      ; preds = %for.cond134
  %93 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom138 = sext i32 %93 to i64
  %arrayidx139 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 %idxprom138
  %94 = load double, ptr %arrayidx139, align 8, !tbaa !9
  %call140 = call double @mat_Dmod1(double noundef %94)
  %95 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom141 = sext i32 %95 to i64
  %arrayidx142 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 %idxprom141
  store double %call140, ptr %arrayidx142, align 8, !tbaa !9
  br label %for.inc143

for.inc143:                                       ; preds = %for.body137
  %96 = load i32, ptr %j, align 4, !tbaa !25
  %inc144 = add nsw i32 %96, 1
  store i32 %inc144, ptr %j, align 4, !tbaa !25
  br label %for.cond134, !llvm.loop !38

for.end145:                                       ; preds = %for.cond134
  %arraydecay146 = getelementptr inbounds [3 x double], ptr %shortest_p, i64 0, i64 0
  %arraydecay147 = getelementptr inbounds [3 x double], ptr %p, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay146, ptr noundef %arraydecay147)
  br label %if.end148

if.end148:                                        ; preds = %for.end145, %for.end126
  br label %for.inc149

for.inc149:                                       ; preds = %if.end148, %if.then80
  %97 = load i32, ptr %i, align 4, !tbaa !25
  %inc150 = add nsw i32 %97, 1
  store i32 %inc150, ptr %i, align 4, !tbaa !25
  br label %for.cond67, !llvm.loop !39

for.end151:                                       ; preds = %for.cond67
  %98 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %origin_shift152 = getelementptr inbounds %struct.Spacegroup, ptr %98, i32 0, i32 10
  %arraydecay153 = getelementptr inbounds [3 x double], ptr %origin_shift152, i64 0, i64 0
  %arraydecay154 = getelementptr inbounds [3 x double], ptr %shortest_p, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay153, ptr noundef %arraydecay154)
  %99 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice155 = getelementptr inbounds %struct.Spacegroup, ptr %99, i32 0, i32 9
  %arraydecay156 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice155, i64 0, i64 0
  %arraydecay157 = getelementptr inbounds [3 x [3 x double]], ptr %rot_lat, i64 0, i64 0
  call void @mat_copy_matrix_d3(ptr noundef %arraydecay156, ptr noundef %arraydecay157)
  br label %if.end158

if.end158:                                        ; preds = %for.end151, %for.end62
  %100 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %100)
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp_vec) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %shortest_p) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %p) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %rot_lat) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %std_lattice) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_length) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %length2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_length2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %conv_sym) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lattice_rank) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rot_i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %101 = load i32, ptr %retval, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal ptr @get_refined_symmetry_operations(ptr noundef %cell, ptr noundef %primitive, ptr noundef %spacegroup, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %primitive.addr = alloca ptr, align 8
  %spacegroup.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %t_mat_int = alloca [3 x [3 x i32]], align 16
  %inv_prim_lat = alloca [3 x [3 x double]], align 16
  %t_mat = alloca [3 x [3 x double]], align 16
  %conv_sym = alloca ptr, align 8
  %prim_sym = alloca ptr, align 8
  %symmetry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %primitive, ptr %primitive.addr, align 8, !tbaa !5
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 36, ptr %t_mat_int) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %inv_prim_lat) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %t_mat) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conv_sym) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %prim_sym) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %symmetry) #7
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  store ptr null, ptr %prim_sym, align 8, !tbaa !5
  store ptr null, ptr %symmetry, align 8, !tbaa !5
  %0 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number = getelementptr inbounds %struct.Spacegroup, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %hall_number, align 4, !tbaa !23
  %call = call ptr @spgdb_get_spacegroup_operations(i32 noundef %1)
  store ptr %call, ptr %conv_sym, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %inv_prim_lat, i64 0, i64 0
  %2 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %lattice, align 8, !tbaa !14
  %call1 = call i32 @mat_inverse_matrix_d3(ptr noundef %arraydecay, ptr noundef %3, double noundef 0.000000e+00)
  %arraydecay2 = getelementptr inbounds [3 x [3 x double]], ptr %t_mat, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [3 x [3 x double]], ptr %inv_prim_lat, i64 0, i64 0
  %4 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice = getelementptr inbounds %struct.Spacegroup, ptr %4, i32 0, i32 9
  %arraydecay4 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice, i64 0, i64 0
  call void @mat_multiply_matrix_d3(ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %arraydecay4)
  %5 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %6 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %origin_shift = getelementptr inbounds %struct.Spacegroup, ptr %6, i32 0, i32 10
  %arraydecay5 = getelementptr inbounds [3 x double], ptr %origin_shift, i64 0, i64 0
  call void @set_translation_with_origin_shift(ptr noundef %5, ptr noundef %arraydecay5)
  %arraydecay6 = getelementptr inbounds [3 x [3 x double]], ptr %t_mat, i64 0, i64 0
  %7 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %call7 = call ptr @get_primitive_db_symmetry(ptr noundef %arraydecay6, ptr noundef %7)
  store ptr %call7, ptr %prim_sym, align 8, !tbaa !5
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %8 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %8)
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %9)
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  %arraydecay11 = getelementptr inbounds [3 x [3 x double]], ptr %t_mat, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x [3 x double]], ptr %inv_prim_lat, i64 0, i64 0
  %10 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %lattice13 = getelementptr inbounds %struct.Cell, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %lattice13, align 8, !tbaa !14
  call void @mat_multiply_matrix_d3(ptr noundef %arraydecay11, ptr noundef %arraydecay12, ptr noundef %11)
  %arraydecay14 = getelementptr inbounds [3 x [3 x i32]], ptr %t_mat_int, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [3 x [3 x double]], ptr %t_mat, i64 0, i64 0
  call void @mat_cast_matrix_3d_to_3i(ptr noundef %arraydecay14, ptr noundef %arraydecay15)
  %12 = load ptr, ptr %prim_sym, align 8, !tbaa !5
  %arraydecay16 = getelementptr inbounds [3 x [3 x i32]], ptr %t_mat_int, i64 0, i64 0
  %13 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %lattice17 = getelementptr inbounds %struct.Cell, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %lattice17, align 8, !tbaa !14
  %15 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %size, align 8, !tbaa !11
  %17 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size18 = getelementptr inbounds %struct.Cell, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %size18, align 8, !tbaa !11
  %div = sdiv i32 %16, %18
  %19 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %aperiodic_axis = getelementptr inbounds %struct.Cell, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %aperiodic_axis, align 4, !tbaa !40
  %21 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call19 = call ptr @recover_symmetry_in_original_cell(ptr noundef %12, ptr noundef %arraydecay16, ptr noundef %14, i32 noundef %div, i32 noundef %20, double noundef %21)
  store ptr %call19, ptr %symmetry, align 8, !tbaa !5
  %22 = load ptr, ptr %prim_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %22)
  store ptr null, ptr %prim_sym, align 8, !tbaa !5
  %23 = load ptr, ptr %symmetry, align 8, !tbaa !5
  store ptr %23, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %symmetry) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %prim_sym) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %conv_sym) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %t_mat) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %inv_prim_lat) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr %t_mat_int) #7
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal ptr @get_Wyckoff_positions(ptr noundef %wyckoffs, ptr noundef %site_symmetry_symbols, ptr noundef %equiv_atoms, ptr noundef %crystallographic_orbits, ptr noundef %std_mapping_to_primitive, ptr noundef %primitive, ptr noundef %cell, ptr noundef %spacegroup, ptr noundef %symmetry, ptr noundef %mapping_table, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %wyckoffs.addr = alloca ptr, align 8
  %site_symmetry_symbols.addr = alloca ptr, align 8
  %equiv_atoms.addr = alloca ptr, align 8
  %crystallographic_orbits.addr = alloca ptr, align 8
  %std_mapping_to_primitive.addr = alloca ptr, align 8
  %primitive.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %spacegroup.addr = alloca ptr, align 8
  %symmetry.addr = alloca ptr, align 8
  %mapping_table.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %bravais = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_prim_sym = alloca i32, align 4
  %wyckoffs_bravais = alloca ptr, align 8
  %equiv_atoms_bravais = alloca ptr, align 8
  %operation_index = alloca [2 x i32], align 4
  %site_symmetry_symbols_bravais = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wyckoffs, ptr %wyckoffs.addr, align 8, !tbaa !5
  store ptr %site_symmetry_symbols, ptr %site_symmetry_symbols.addr, align 8, !tbaa !5
  store ptr %equiv_atoms, ptr %equiv_atoms.addr, align 8, !tbaa !5
  store ptr %crystallographic_orbits, ptr %crystallographic_orbits.addr, align 8, !tbaa !5
  store ptr %std_mapping_to_primitive, ptr %std_mapping_to_primitive.addr, align 8, !tbaa !5
  store ptr %primitive, ptr %primitive.addr, align 8, !tbaa !5
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  store ptr %symmetry, ptr %symmetry.addr, align 8, !tbaa !5
  store ptr %mapping_table, ptr %mapping_table.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bravais) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_prim_sym) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %wyckoffs_bravais) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %equiv_atoms_bravais) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %operation_index) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_symmetry_symbols_bravais) #7
  store ptr null, ptr %bravais, align 8, !tbaa !5
  store ptr null, ptr %wyckoffs_bravais, align 8, !tbaa !5
  store ptr null, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  store ptr null, ptr %equiv_atoms_bravais, align 8, !tbaa !5
  %0 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !11
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %mul1 = mul i64 %mul, 4
  %call = call noalias ptr @malloc(i64 noundef %mul1) #8
  store ptr %call, ptr %wyckoffs_bravais, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size4 = getelementptr inbounds %struct.Cell, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %size4, align 8, !tbaa !11
  %conv5 = sext i32 %4 to i64
  %mul6 = mul i64 7, %conv5
  %mul7 = mul i64 %mul6, 4
  %call8 = call noalias ptr @malloc(i64 noundef %mul7) #8
  store ptr %call8, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str)
  %6 = load ptr, ptr %wyckoffs_bravais, align 8, !tbaa !5
  call void @free(ptr noundef %6) #7
  store ptr null, ptr %wyckoffs_bravais, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %7 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size14 = getelementptr inbounds %struct.Cell, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %size14, align 8, !tbaa !11
  %conv15 = sext i32 %8 to i64
  %mul16 = mul i64 4, %conv15
  %mul17 = mul i64 %mul16, 4
  %call18 = call noalias ptr @malloc(i64 noundef %mul17) #8
  store ptr %call18, ptr %equiv_atoms_bravais, align 8, !tbaa !5
  %cmp19 = icmp eq ptr %call18, null
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end13
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1)
  %10 = load ptr, ptr %wyckoffs_bravais, align 8, !tbaa !5
  call void @free(ptr noundef %10) #7
  store ptr null, ptr %wyckoffs_bravais, align 8, !tbaa !5
  %11 = load ptr, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  call void @free(ptr noundef %11) #7
  store ptr null, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %12 = load ptr, ptr %wyckoffs_bravais, align 8, !tbaa !5
  %13 = load ptr, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  %14 = load ptr, ptr %equiv_atoms_bravais, align 8, !tbaa !5
  %15 = load ptr, ptr %std_mapping_to_primitive.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %18 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call24 = call ptr @get_bravais_exact_positions_and_lattice(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, double noundef %18)
  store ptr %call24, ptr %bravais, align 8, !tbaa !5
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.2)
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.3, i32 noundef 336, ptr noundef @.str.4)
  br label %ret

if.end30:                                         ; preds = %if.end23
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %if.end30
  %21 = load i32, ptr %i, align 4, !tbaa !25
  %22 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size31 = getelementptr inbounds %struct.Cell, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %size31, align 8, !tbaa !11
  %cmp32 = icmp slt i32 %21, %23
  br i1 %cmp32, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %wyckoffs_bravais, align 8, !tbaa !5
  %25 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds i32, ptr %25, i64 %idxprom
  %27 = load i32, ptr %arrayidx, align 4, !tbaa !25
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %24, i64 %idxprom34
  %28 = load i32, ptr %arrayidx35, align 4, !tbaa !25
  %29 = load ptr, ptr %wyckoffs.addr, align 8, !tbaa !5
  %30 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %29, i64 %idxprom36
  store i32 %28, ptr %arrayidx37, align 4, !tbaa !25
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %for.body
  %31 = load i32, ptr %j, align 4, !tbaa !25
  %cmp39 = icmp slt i32 %31, 7
  br i1 %cmp39, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond38
  %32 = load ptr, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  %33 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %34 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom42 = sext i32 %34 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %33, i64 %idxprom42
  %35 = load i32, ptr %arrayidx43, align 4, !tbaa !25
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [7 x i8], ptr %32, i64 %idxprom44
  %36 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [7 x i8], ptr %arrayidx45, i64 0, i64 %idxprom46
  %37 = load i8, ptr %arrayidx47, align 1, !tbaa !41
  %38 = load ptr, ptr %site_symmetry_symbols.addr, align 8, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds [7 x i8], ptr %38, i64 %idxprom48
  %40 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom50 = sext i32 %40 to i64
  %arrayidx51 = getelementptr inbounds [7 x i8], ptr %arrayidx49, i64 0, i64 %idxprom50
  store i8 %37, ptr %arrayidx51, align 1, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %41 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond38, !llvm.loop !42

for.end:                                          ; preds = %for.cond38
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %42 = load i32, ptr %i, align 4, !tbaa !25
  %inc53 = add nsw i32 %42, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !43

for.end54:                                        ; preds = %for.cond
  %43 = load ptr, ptr %crystallographic_orbits.addr, align 8, !tbaa !5
  %44 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %45 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %equiv_atoms_bravais, align 8, !tbaa !5
  %47 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %call55 = call i32 @set_crystallographic_orbits(ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then58, label %if.end61

if.then58:                                        ; preds = %for.end54
  %48 = load ptr, ptr %bravais, align 8, !tbaa !5
  call void @cel_free_cell(ptr noundef %48)
  store ptr null, ptr %bravais, align 8, !tbaa !5
  %49 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.5)
  %50 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.3, i32 noundef 363, ptr noundef @.str.4)
  br label %ret

if.end61:                                         ; preds = %for.end54
  %arraydecay = getelementptr inbounds [2 x i32], ptr %operation_index, i64 0, i64 0
  %51 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number = getelementptr inbounds %struct.Spacegroup, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %hall_number, align 4, !tbaa !23
  call void @spgdb_get_operation_index(ptr noundef %arraydecay, i32 noundef %52)
  %arrayidx62 = getelementptr inbounds [2 x i32], ptr %operation_index, i64 0, i64 0
  %53 = load i32, ptr %arrayidx62, align 4, !tbaa !25
  %54 = load ptr, ptr %bravais, align 8, !tbaa !5
  %size63 = getelementptr inbounds %struct.Cell, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %size63, align 8, !tbaa !11
  %56 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size64 = getelementptr inbounds %struct.Cell, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %size64, align 8, !tbaa !11
  %div = sdiv i32 %55, %57
  %div65 = sdiv i32 %53, %div
  store i32 %div65, ptr %num_prim_sym, align 4, !tbaa !25
  %58 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size66 = getelementptr inbounds %struct.Cell, ptr %58, i32 0, i32 0
  %59 = load i32, ptr %size66, align 8, !tbaa !11
  %60 = load i32, ptr %num_prim_sym, align 4, !tbaa !25
  %mul67 = mul nsw i32 %59, %60
  %61 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %size68 = getelementptr inbounds %struct.Symmetry, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %size68, align 8, !tbaa !29
  %63 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size69 = getelementptr inbounds %struct.Cell, ptr %63, i32 0, i32 0
  %64 = load i32, ptr %size69, align 8, !tbaa !11
  %mul70 = mul nsw i32 %62, %64
  %cmp71 = icmp ne i32 %mul67, %mul70
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end61
  %65 = load ptr, ptr %equiv_atoms.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %67 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %68 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %69 = load double, ptr %symprec.addr, align 8, !tbaa !9
  call void @set_equivalent_atoms_broken_symmetry(ptr noundef %65, ptr noundef %66, ptr noundef %67, ptr noundef %68, double noundef %69)
  br label %if.end86

if.else:                                          ; preds = %if.end61
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc83, %if.else
  %70 = load i32, ptr %i, align 4, !tbaa !25
  %71 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size75 = getelementptr inbounds %struct.Cell, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %size75, align 8, !tbaa !11
  %cmp76 = icmp slt i32 %70, %72
  br i1 %cmp76, label %for.body78, label %for.end85

for.body78:                                       ; preds = %for.cond74
  %73 = load ptr, ptr %crystallographic_orbits.addr, align 8, !tbaa !5
  %74 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom79 = sext i32 %74 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %73, i64 %idxprom79
  %75 = load i32, ptr %arrayidx80, align 4, !tbaa !25
  %76 = load ptr, ptr %equiv_atoms.addr, align 8, !tbaa !5
  %77 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom81 = sext i32 %77 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %76, i64 %idxprom81
  store i32 %75, ptr %arrayidx82, align 4, !tbaa !25
  br label %for.inc83

for.inc83:                                        ; preds = %for.body78
  %78 = load i32, ptr %i, align 4, !tbaa !25
  %inc84 = add nsw i32 %78, 1
  store i32 %inc84, ptr %i, align 4, !tbaa !25
  br label %for.cond74, !llvm.loop !44

for.end85:                                        ; preds = %for.cond74
  br label %if.end86

if.end86:                                         ; preds = %for.end85, %if.then73
  br label %ret

ret:                                              ; preds = %if.end86, %if.then58, %if.then27
  %79 = load ptr, ptr %equiv_atoms_bravais, align 8, !tbaa !5
  call void @free(ptr noundef %79) #7
  store ptr null, ptr %equiv_atoms_bravais, align 8, !tbaa !5
  %80 = load ptr, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  call void @free(ptr noundef %80) #7
  store ptr null, ptr %site_symmetry_symbols_bravais, align 8, !tbaa !5
  %81 = load ptr, ptr %wyckoffs_bravais, align 8, !tbaa !5
  call void @free(ptr noundef %81) #7
  store ptr null, ptr %wyckoffs_bravais, align 8, !tbaa !5
  %82 = load ptr, ptr %bravais, align 8, !tbaa !5
  store ptr %82, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %ret, %if.then21, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_symmetry_symbols_bravais) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %operation_index) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %equiv_atoms_bravais) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %wyckoffs_bravais) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_prim_sym) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bravais) #7
  %83 = load ptr, ptr %retval, align 8
  ret ptr %83
}

declare void @sym_free_symmetry(ptr noundef) #3

declare void @cel_free_cell(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @ref_measure_rigid_rotation(ptr noundef %rotation, ptr noundef %bravais_lattice, ptr noundef %std_lattice) #0 {
entry:
  %rotation.addr = alloca ptr, align 8
  %bravais_lattice.addr = alloca ptr, align 8
  %std_lattice.addr = alloca ptr, align 8
  %brv_basis = alloca [3 x [3 x double]], align 16
  %std_basis = alloca [3 x [3 x double]], align 16
  %inv_brv_basis = alloca [3 x [3 x double]], align 16
  store ptr %rotation, ptr %rotation.addr, align 8, !tbaa !5
  store ptr %bravais_lattice, ptr %bravais_lattice.addr, align 8, !tbaa !5
  store ptr %std_lattice, ptr %std_lattice.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 72, ptr %brv_basis) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %std_basis) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %inv_brv_basis) #7
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %brv_basis, i64 0, i64 0
  %0 = load ptr, ptr %bravais_lattice.addr, align 8, !tbaa !5
  call void @get_orthonormal_basis(ptr noundef %arraydecay, ptr noundef %0)
  %arraydecay1 = getelementptr inbounds [3 x [3 x double]], ptr %std_basis, i64 0, i64 0
  %1 = load ptr, ptr %std_lattice.addr, align 8, !tbaa !5
  call void @get_orthonormal_basis(ptr noundef %arraydecay1, ptr noundef %1)
  %arraydecay2 = getelementptr inbounds [3 x [3 x double]], ptr %inv_brv_basis, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [3 x [3 x double]], ptr %brv_basis, i64 0, i64 0
  %call = call i32 @mat_inverse_matrix_d3(ptr noundef %arraydecay2, ptr noundef %arraydecay3, double noundef 0.000000e+00)
  %2 = load ptr, ptr %rotation.addr, align 8, !tbaa !5
  %arraydecay4 = getelementptr inbounds [3 x [3 x double]], ptr %std_basis, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [3 x [3 x double]], ptr %inv_brv_basis, i64 0, i64 0
  call void @mat_multiply_matrix_d3(ptr noundef %2, ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  call void @llvm.lifetime.end.p0(i64 72, ptr %inv_brv_basis) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %std_basis) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %brv_basis) #7
  ret void
}

declare void @mat_copy_matrix_d3(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @spgdb_get_spacegroup_operations(i32 noundef) #3

declare i32 @mat_inverse_matrix_d3(ptr noundef, ptr noundef, double noundef) #3

declare void @mat_multiply_matrix_d3(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @set_translation_with_origin_shift(ptr noundef %conv_sym, ptr noundef %origin_shift) #0 {
entry:
  %conv_sym.addr = alloca ptr, align 8
  %origin_shift.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp_vec = alloca [3 x double], align 16
  %tmp_mat = alloca [3 x [3 x i32]], align 16
  store ptr %conv_sym, ptr %conv_sym.addr, align 8, !tbaa !5
  store ptr %origin_shift, ptr %origin_shift.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp_vec) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr %tmp_mat) #7
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !25
  %1 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %size, align 8, !tbaa !29
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_mat, i64 0, i64 0
  %3 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %rot, align 8, !tbaa !31
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %4, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  call void @mat_copy_matrix_i3(ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arrayidx2 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_mat, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds [3 x i32], ptr %arrayidx2, i64 0, i64 0
  %6 = load i32, ptr %arrayidx3, align 16, !tbaa !25
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %arrayidx3, align 16, !tbaa !25
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_mat, i64 0, i64 1
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %arrayidx4, i64 0, i64 1
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !25
  %dec6 = add nsw i32 %7, -1
  store i32 %dec6, ptr %arrayidx5, align 4, !tbaa !25
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_mat, i64 0, i64 2
  %arrayidx8 = getelementptr inbounds [3 x i32], ptr %arrayidx7, i64 0, i64 2
  %8 = load i32, ptr %arrayidx8, align 8, !tbaa !25
  %dec9 = add nsw i32 %8, -1
  store i32 %dec9, ptr %arrayidx8, align 8, !tbaa !25
  %arraydecay10 = getelementptr inbounds [3 x double], ptr %tmp_vec, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_mat, i64 0, i64 0
  %9 = load ptr, ptr %origin_shift.addr, align 8, !tbaa !5
  call void @mat_multiply_matrix_vector_id3(ptr noundef %arraydecay10, ptr noundef %arraydecay11, ptr noundef %9)
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4, !tbaa !25
  %cmp13 = icmp slt i32 %10, 3
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %11 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %tmp_vec, i64 0, i64 %idxprom15
  %12 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %13 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %trans, align 8, !tbaa !35
  %15 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %14, i64 %idxprom17
  %16 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %arrayidx18, i64 0, i64 %idxprom19
  %17 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %add = fadd double %17, %12
  store double %add, ptr %arrayidx20, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %18 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond12, !llvm.loop !45

for.end:                                          ; preds = %for.cond12
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !25
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !46

for.end23:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 36, ptr %tmp_mat) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp_vec) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @get_primitive_db_symmetry(ptr noundef %t_mat, ptr noundef %conv_sym) #0 {
entry:
  %retval = alloca ptr, align 8
  %t_mat.addr = alloca ptr, align 8
  %conv_sym.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_op = alloca i32, align 4
  %inv_mat = alloca [3 x [3 x double]], align 16
  %tmp_mat = alloca [3 x [3 x double]], align 16
  %r_prim = alloca ptr, align 8
  %t_prim = alloca ptr, align 8
  %prim_sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t_mat, ptr %t_mat.addr, align 8, !tbaa !5
  store ptr %conv_sym, ptr %conv_sym.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_op) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %inv_mat) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_prim) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_prim) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %prim_sym) #7
  store ptr null, ptr %r_prim, align 8, !tbaa !5
  store ptr null, ptr %t_prim, align 8, !tbaa !5
  store ptr null, ptr %prim_sym, align 8, !tbaa !5
  %0 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !29
  %call = call ptr @mat_alloc_MatINT(i32 noundef %1)
  store ptr %call, ptr %r_prim, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %size1 = getelementptr inbounds %struct.Symmetry, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %size1, align 8, !tbaa !29
  %call2 = call ptr @mat_alloc_VecDBL(i32 noundef %3)
  store ptr %call2, ptr %t_prim, align 8, !tbaa !5
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %r_prim, align 8, !tbaa !5
  call void @mat_free_MatINT(ptr noundef %4)
  store ptr null, ptr %r_prim, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %inv_mat, i64 0, i64 0
  %5 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %call6 = call i32 @mat_inverse_matrix_d3(ptr noundef %arraydecay, ptr noundef %5, double noundef 0.000000e+00)
  store i32 0, ptr %num_op, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %if.end5
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %7 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %size7 = getelementptr inbounds %struct.Symmetry, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %size7, align 8, !tbaa !29
  %cmp8 = icmp slt i32 %6, %8
  br i1 %cmp8, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !25
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %cmp10 = icmp slt i32 %9, %10
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %11 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %rot, align 8, !tbaa !31
  %13 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 %idxprom
  %arraydecay12 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  %14 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %rot13 = getelementptr inbounds %struct.Symmetry, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %rot13, align 8, !tbaa !31
  %16 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [3 x [3 x i32]], ptr %15, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx15, i64 0, i64 0
  %call17 = call i32 @mat_check_identity_matrix_i3(ptr noundef %arraydecay12, ptr noundef %arraydecay16)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body11
  br label %pass

if.end19:                                         ; preds = %for.body11
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %17 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond9, !llvm.loop !47

for.end:                                          ; preds = %for.cond9
  %arraydecay20 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %18 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %rot21 = getelementptr inbounds %struct.Symmetry, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %rot21, align 8, !tbaa !31
  %21 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [3 x [3 x i32]], ptr %20, i64 %idxprom22
  %arraydecay24 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx23, i64 0, i64 0
  call void @mat_multiply_matrix_di3(ptr noundef %arraydecay20, ptr noundef %18, ptr noundef %arraydecay24)
  %arraydecay25 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [3 x [3 x double]], ptr %inv_mat, i64 0, i64 0
  call void @mat_multiply_matrix_d3(ptr noundef %arraydecay25, ptr noundef %arraydecay26, ptr noundef %arraydecay27)
  %22 = load ptr, ptr %r_prim, align 8, !tbaa !5
  %mat = getelementptr inbounds %struct.MatINT, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %mat, align 8, !tbaa !48
  %24 = load i32, ptr %num_op, align 4, !tbaa !25
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds [3 x [3 x i32]], ptr %23, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx29, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  call void @mat_cast_matrix_3d_to_3i(ptr noundef %arraydecay30, ptr noundef %arraydecay31)
  %25 = load ptr, ptr %t_prim, align 8, !tbaa !5
  %vec = getelementptr inbounds %struct.VecDBL, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %vec, align 8, !tbaa !48
  %27 = load i32, ptr %num_op, align 4, !tbaa !25
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [3 x double], ptr %26, i64 %idxprom32
  %arraydecay34 = getelementptr inbounds [3 x double], ptr %arrayidx33, i64 0, i64 0
  %28 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %29 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %trans, align 8, !tbaa !35
  %31 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds [3 x double], ptr %30, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [3 x double], ptr %arrayidx36, i64 0, i64 0
  call void @mat_multiply_matrix_vector_d3(ptr noundef %arraydecay34, ptr noundef %28, ptr noundef %arraydecay37)
  %32 = load i32, ptr %num_op, align 4, !tbaa !25
  %inc38 = add nsw i32 %32, 1
  store i32 %inc38, ptr %num_op, align 4, !tbaa !25
  br label %pass

pass:                                             ; preds = %for.end, %if.then18
  br label %for.inc39

for.inc39:                                        ; preds = %pass
  %33 = load i32, ptr %i, align 4, !tbaa !25
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !50

for.end41:                                        ; preds = %for.cond
  %34 = load i32, ptr %num_op, align 4, !tbaa !25
  %call42 = call ptr @sym_alloc_symmetry(i32 noundef %34)
  store ptr %call42, ptr %prim_sym, align 8, !tbaa !5
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.end41
  br label %ret

if.end45:                                         ; preds = %for.end41
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc73, %if.end45
  %35 = load i32, ptr %i, align 4, !tbaa !25
  %36 = load i32, ptr %num_op, align 4, !tbaa !25
  %cmp47 = icmp slt i32 %35, %36
  br i1 %cmp47, label %for.body48, label %for.end75

for.body48:                                       ; preds = %for.cond46
  %37 = load ptr, ptr %prim_sym, align 8, !tbaa !5
  %rot49 = getelementptr inbounds %struct.Symmetry, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %rot49, align 8, !tbaa !31
  %39 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom50 = sext i32 %39 to i64
  %arrayidx51 = getelementptr inbounds [3 x [3 x i32]], ptr %38, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx51, i64 0, i64 0
  %40 = load ptr, ptr %r_prim, align 8, !tbaa !5
  %mat53 = getelementptr inbounds %struct.MatINT, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %mat53, align 8, !tbaa !48
  %42 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [3 x [3 x i32]], ptr %41, i64 %idxprom54
  %arraydecay56 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx55, i64 0, i64 0
  call void @mat_copy_matrix_i3(ptr noundef %arraydecay52, ptr noundef %arraydecay56)
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.body48
  %43 = load i32, ptr %j, align 4, !tbaa !25
  %cmp58 = icmp slt i32 %43, 3
  br i1 %cmp58, label %for.body59, label %for.end72

for.body59:                                       ; preds = %for.cond57
  %44 = load ptr, ptr %t_prim, align 8, !tbaa !5
  %vec60 = getelementptr inbounds %struct.VecDBL, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %vec60, align 8, !tbaa !48
  %46 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [3 x double], ptr %45, i64 %idxprom61
  %47 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds [3 x double], ptr %arrayidx62, i64 0, i64 %idxprom63
  %48 = load double, ptr %arrayidx64, align 8, !tbaa !9
  %49 = load ptr, ptr %prim_sym, align 8, !tbaa !5
  %trans65 = getelementptr inbounds %struct.Symmetry, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %trans65, align 8, !tbaa !35
  %51 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom66 = sext i32 %51 to i64
  %arrayidx67 = getelementptr inbounds [3 x double], ptr %50, i64 %idxprom66
  %52 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom68 = sext i32 %52 to i64
  %arrayidx69 = getelementptr inbounds [3 x double], ptr %arrayidx67, i64 0, i64 %idxprom68
  store double %48, ptr %arrayidx69, align 8, !tbaa !9
  br label %for.inc70

for.inc70:                                        ; preds = %for.body59
  %53 = load i32, ptr %j, align 4, !tbaa !25
  %inc71 = add nsw i32 %53, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !25
  br label %for.cond57, !llvm.loop !51

for.end72:                                        ; preds = %for.cond57
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %54 = load i32, ptr %i, align 4, !tbaa !25
  %inc74 = add nsw i32 %54, 1
  store i32 %inc74, ptr %i, align 4, !tbaa !25
  br label %for.cond46, !llvm.loop !52

for.end75:                                        ; preds = %for.cond46
  br label %ret

ret:                                              ; preds = %for.end75, %if.then44
  %55 = load ptr, ptr %r_prim, align 8, !tbaa !5
  call void @mat_free_MatINT(ptr noundef %55)
  store ptr null, ptr %r_prim, align 8, !tbaa !5
  %56 = load ptr, ptr %t_prim, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %56)
  store ptr null, ptr %t_prim, align 8, !tbaa !5
  %57 = load ptr, ptr %prim_sym, align 8, !tbaa !5
  store ptr %57, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %ret, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prim_sym) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_prim) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_prim) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %inv_mat) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_op) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %58 = load ptr, ptr %retval, align 8
  ret ptr %58
}

declare void @mat_cast_matrix_3d_to_3i(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @recover_symmetry_in_original_cell(ptr noundef %prim_sym, ptr noundef %t_mat, ptr noundef %lattice, i32 noundef %multiplicity, i32 noundef %aperiodic_axis, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %prim_sym.addr = alloca ptr, align 8
  %t_mat.addr = alloca ptr, align 8
  %lattice.addr = alloca ptr, align 8
  %multiplicity.addr = alloca i32, align 4
  %aperiodic_axis.addr = alloca i32, align 4
  %symprec.addr = alloca double, align 8
  %symmetry = alloca ptr, align 8
  %t_sym = alloca ptr, align 8
  %frame = alloca [3 x i32], align 4
  %inv_tmat = alloca [3 x [3 x double]], align 16
  %tmp_mat = alloca [3 x [3 x double]], align 16
  %pure_trans = alloca ptr, align 8
  %lattice_trans = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %prim_sym, ptr %prim_sym.addr, align 8, !tbaa !5
  store ptr %t_mat, ptr %t_mat.addr, align 8, !tbaa !5
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store i32 %multiplicity, ptr %multiplicity.addr, align 4, !tbaa !25
  store i32 %aperiodic_axis, ptr %aperiodic_axis.addr, align 4, !tbaa !25
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %symmetry) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_sym) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr %frame) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %inv_tmat) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pure_trans) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lattice_trans) #7
  store ptr null, ptr %symmetry, align 8, !tbaa !5
  store ptr null, ptr %t_sym, align 8, !tbaa !5
  store ptr null, ptr %pure_trans, align 8, !tbaa !5
  store ptr null, ptr %lattice_trans, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x i32], ptr %frame, i64 0, i64 0
  %0 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  call void @get_surrounding_frame(ptr noundef %arraydecay, ptr noundef %0)
  %arraydecay1 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %1 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  call void @mat_cast_matrix_3i_to_3d(ptr noundef %arraydecay1, ptr noundef %1)
  %arraydecay2 = getelementptr inbounds [3 x [3 x double]], ptr %inv_tmat, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %call = call i32 @mat_inverse_matrix_d3(ptr noundef %arraydecay2, ptr noundef %arraydecay3, double noundef 0.000000e+00)
  %arraydecay4 = getelementptr inbounds [3 x i32], ptr %frame, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [3 x [3 x double]], ptr %inv_tmat, i64 0, i64 0
  %call6 = call ptr @get_lattice_translations(ptr noundef %arraydecay4, ptr noundef %arraydecay5)
  store ptr %call6, ptr %lattice_trans, align 8, !tbaa !5
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %4 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call7 = call ptr @remove_overlapping_lattice_points(ptr noundef %2, ptr noundef %3, double noundef %4)
  store ptr %call7, ptr %pure_trans, align 8, !tbaa !5
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %5 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %5)
  store ptr null, ptr %lattice_trans, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %arraydecay11 = getelementptr inbounds [3 x [3 x double]], ptr %inv_tmat, i64 0, i64 0
  %7 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %prim_sym.addr, align 8, !tbaa !5
  %9 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call12 = call ptr @get_symmetry_in_original_cell(ptr noundef %6, ptr noundef %arraydecay11, ptr noundef %7, ptr noundef %8, double noundef %9)
  store ptr %call12, ptr %t_sym, align 8, !tbaa !5
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %10 = load ptr, ptr %pure_trans, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %10)
  store ptr null, ptr %pure_trans, align 8, !tbaa !5
  %11 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %11)
  store ptr null, ptr %lattice_trans, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %12 = load ptr, ptr %pure_trans, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.VecDBL, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %size, align 8, !tbaa !53
  %14 = load i32, ptr %multiplicity.addr, align 4, !tbaa !25
  %cmp16 = icmp eq i32 %13, %14
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %15 = load ptr, ptr %pure_trans, align 8, !tbaa !5
  %16 = load ptr, ptr %t_sym, align 8, !tbaa !5
  %17 = load i32, ptr %aperiodic_axis.addr, align 4, !tbaa !25
  %call18 = call ptr @copy_symmetry_upon_lattice_points(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  store ptr %call18, ptr %symmetry, align 8, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %18 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %18)
  store ptr null, ptr %lattice_trans, align 8, !tbaa !5
  %19 = load ptr, ptr %pure_trans, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %19)
  store ptr null, ptr %pure_trans, align 8, !tbaa !5
  %20 = load ptr, ptr %t_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %20)
  store ptr null, ptr %t_sym, align 8, !tbaa !5
  %21 = load ptr, ptr %symmetry, align 8, !tbaa !5
  store ptr %21, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then14, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lattice_trans) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pure_trans) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %inv_tmat) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr %frame) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_sym) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %symmetry) #7
  %22 = load ptr, ptr %retval, align 8
  ret ptr %22
}

declare void @mat_copy_matrix_i3(ptr noundef, ptr noundef) #3

declare void @mat_multiply_matrix_vector_id3(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @mat_alloc_MatINT(i32 noundef) #3

declare ptr @mat_alloc_VecDBL(i32 noundef) #3

declare void @mat_free_MatINT(ptr noundef) #3

declare i32 @mat_check_identity_matrix_i3(ptr noundef, ptr noundef) #3

declare void @mat_multiply_matrix_di3(ptr noundef, ptr noundef, ptr noundef) #3

declare void @mat_multiply_matrix_vector_d3(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @sym_alloc_symmetry(i32 noundef) #3

declare void @mat_free_VecDBL(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @get_surrounding_frame(ptr noundef %frame, ptr noundef %t_mat) #0 {
entry:
  %frame.addr = alloca ptr, align 8
  %t_mat.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  %corners = alloca [3 x [8 x i32]], align 16
  store ptr %frame, ptr %frame.addr, align 8, !tbaa !5
  store ptr %t_mat, ptr %t_mat.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr %corners) #7
  %arraydecay = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 0
  %0 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  call void @get_corners(ptr noundef %arraydecay, ptr noundef %0)
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 16, !tbaa !25
  store i32 %3, ptr %max, align 4, !tbaa !25
  %4 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [8 x i32], ptr %arrayidx3, i64 0, i64 0
  %5 = load i32, ptr %arrayidx4, align 16, !tbaa !25
  store i32 %5, ptr %min, align 4, !tbaa !25
  store i32 1, ptr %j, align 4, !tbaa !25
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !25
  %cmp6 = icmp slt i32 %6, 8
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %7 = load i32, ptr %max, align 4, !tbaa !25
  %8 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 %idxprom8
  %9 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !25
  %cmp12 = icmp slt i32 %7, %10
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %11 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 %idxprom13
  %12 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %arrayidx14, i64 0, i64 %idxprom15
  %13 = load i32, ptr %arrayidx16, align 4, !tbaa !25
  store i32 %13, ptr %max, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %14 = load i32, ptr %min, align 4, !tbaa !25
  %15 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 %idxprom17
  %16 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %17 = load i32, ptr %arrayidx20, align 4, !tbaa !25
  %cmp21 = icmp sgt i32 %14, %17
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [3 x [8 x i32]], ptr %corners, i64 0, i64 %idxprom23
  %19 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom25 = sext i32 %19 to i64
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %20 = load i32, ptr %arrayidx26, align 4, !tbaa !25
  store i32 %20, ptr %min, align 4, !tbaa !25
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %21 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond5, !llvm.loop !54

for.end:                                          ; preds = %for.cond5
  %22 = load i32, ptr %max, align 4, !tbaa !25
  %23 = load i32, ptr %min, align 4, !tbaa !25
  %sub = sub nsw i32 %22, %23
  %24 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %24, i64 %idxprom28
  store i32 %sub, ptr %arrayidx29, align 4, !tbaa !25
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %26 = load i32, ptr %i, align 4, !tbaa !25
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !55

for.end32:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 96, ptr %corners) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare void @mat_cast_matrix_3i_to_3d(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @get_lattice_translations(ptr noundef %frame, ptr noundef %inv_tmat) #0 {
entry:
  %retval = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %inv_tmat.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %num_trans = alloca i32, align 4
  %lattice_trans = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %frame, ptr %frame.addr, align 8, !tbaa !5
  store ptr %inv_tmat, ptr %inv_tmat.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_trans) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lattice_trans) #7
  store ptr null, ptr %lattice_trans, align 8, !tbaa !5
  %0 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !25
  %2 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !25
  %mul = mul nsw i32 %1, %3
  %4 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 2
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !25
  %mul3 = mul nsw i32 %mul, %5
  %call = call ptr @mat_alloc_VecDBL(i32 noundef %mul3)
  store ptr %call, ptr %lattice_trans, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %num_trans, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %if.end
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %7 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 0
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !25
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc52, %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !25
  %10 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 1
  %11 = load i32, ptr %arrayidx7, align 4, !tbaa !25
  %cmp8 = icmp slt i32 %9, %11
  br i1 %cmp8, label %for.body9, label %for.end54

for.body9:                                        ; preds = %for.cond6
  store i32 0, ptr %k, align 4, !tbaa !25
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc49, %for.body9
  %12 = load i32, ptr %k, align 4, !tbaa !25
  %13 = load ptr, ptr %frame.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds i32, ptr %13, i64 2
  %14 = load i32, ptr %arrayidx11, align 4, !tbaa !25
  %cmp12 = icmp slt i32 %12, %14
  br i1 %cmp12, label %for.body13, label %for.end51

for.body13:                                       ; preds = %for.cond10
  %15 = load i32, ptr %i, align 4, !tbaa !25
  %conv = sitofp i32 %15 to double
  %16 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec = getelementptr inbounds %struct.VecDBL, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %vec, align 8, !tbaa !48
  %18 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %17, i64 %idxprom
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %arrayidx14, i64 0, i64 0
  store double %conv, ptr %arrayidx15, align 8, !tbaa !9
  %19 = load i32, ptr %j, align 4, !tbaa !25
  %conv16 = sitofp i32 %19 to double
  %20 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec17 = getelementptr inbounds %struct.VecDBL, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %vec17, align 8, !tbaa !48
  %22 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %21, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 1
  store double %conv16, ptr %arrayidx20, align 8, !tbaa !9
  %23 = load i32, ptr %k, align 4, !tbaa !25
  %conv21 = sitofp i32 %23 to double
  %24 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec22 = getelementptr inbounds %struct.VecDBL, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %vec22, align 8, !tbaa !48
  %26 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds [3 x double], ptr %25, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %arrayidx24, i64 0, i64 2
  store double %conv21, ptr %arrayidx25, align 8, !tbaa !9
  %27 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec26 = getelementptr inbounds %struct.VecDBL, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %vec26, align 8, !tbaa !48
  %29 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom27 = sext i32 %29 to i64
  %arrayidx28 = getelementptr inbounds [3 x double], ptr %28, i64 %idxprom27
  %arraydecay = getelementptr inbounds [3 x double], ptr %arrayidx28, i64 0, i64 0
  %30 = load ptr, ptr %inv_tmat.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec29 = getelementptr inbounds %struct.VecDBL, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %vec29, align 8, !tbaa !48
  %33 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [3 x double], ptr %32, i64 %idxprom30
  %arraydecay32 = getelementptr inbounds [3 x double], ptr %arrayidx31, i64 0, i64 0
  call void @mat_multiply_matrix_vector_d3(ptr noundef %arraydecay, ptr noundef %30, ptr noundef %arraydecay32)
  store i32 0, ptr %l, align 4, !tbaa !25
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body13
  %34 = load i32, ptr %l, align 4, !tbaa !25
  %cmp34 = icmp slt i32 %34, 3
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %35 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec37 = getelementptr inbounds %struct.VecDBL, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %vec37, align 8, !tbaa !48
  %37 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds [3 x double], ptr %36, i64 %idxprom38
  %38 = load i32, ptr %l, align 4, !tbaa !25
  %idxprom40 = sext i32 %38 to i64
  %arrayidx41 = getelementptr inbounds [3 x double], ptr %arrayidx39, i64 0, i64 %idxprom40
  %39 = load double, ptr %arrayidx41, align 8, !tbaa !9
  %call42 = call double @mat_Dmod1(double noundef %39)
  %40 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  %vec43 = getelementptr inbounds %struct.VecDBL, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %vec43, align 8, !tbaa !48
  %42 = load i32, ptr %num_trans, align 4, !tbaa !25
  %idxprom44 = sext i32 %42 to i64
  %arrayidx45 = getelementptr inbounds [3 x double], ptr %41, i64 %idxprom44
  %43 = load i32, ptr %l, align 4, !tbaa !25
  %idxprom46 = sext i32 %43 to i64
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %arrayidx45, i64 0, i64 %idxprom46
  store double %call42, ptr %arrayidx47, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %44 = load i32, ptr %l, align 4, !tbaa !25
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %l, align 4, !tbaa !25
  br label %for.cond33, !llvm.loop !56

for.end:                                          ; preds = %for.cond33
  %45 = load i32, ptr %num_trans, align 4, !tbaa !25
  %inc48 = add nsw i32 %45, 1
  store i32 %inc48, ptr %num_trans, align 4, !tbaa !25
  br label %for.inc49

for.inc49:                                        ; preds = %for.end
  %46 = load i32, ptr %k, align 4, !tbaa !25
  %inc50 = add nsw i32 %46, 1
  store i32 %inc50, ptr %k, align 4, !tbaa !25
  br label %for.cond10, !llvm.loop !57

for.end51:                                        ; preds = %for.cond10
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %47 = load i32, ptr %j, align 4, !tbaa !25
  %inc53 = add nsw i32 %47, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !25
  br label %for.cond6, !llvm.loop !58

for.end54:                                        ; preds = %for.cond6
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %48 = load i32, ptr %i, align 4, !tbaa !25
  %inc56 = add nsw i32 %48, 1
  store i32 %inc56, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !59

for.end57:                                        ; preds = %for.cond
  %49 = load ptr, ptr %lattice_trans, align 8, !tbaa !5
  store ptr %49, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %lattice_trans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_trans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %50 = load ptr, ptr %retval, align 8
  ret ptr %50
}

; Function Attrs: nounwind uwtable
define internal ptr @remove_overlapping_lattice_points(ptr noundef %lattice, ptr noundef %lattice_trans, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %lattice.addr = alloca ptr, align 8
  %lattice_trans.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %is_found = alloca i32, align 4
  %num_pure_trans = alloca i32, align 4
  %pure_trans = alloca ptr, align 8
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %lattice_trans, ptr %lattice_trans.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %is_found) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pure_trans) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pure_trans) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7
  store ptr null, ptr %pure_trans, align 8, !tbaa !5
  store ptr null, ptr %t, align 8, !tbaa !5
  store i32 0, ptr %num_pure_trans, align 4, !tbaa !25
  %0 = load ptr, ptr %lattice_trans.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.VecDBL, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !53
  %call = call ptr @mat_alloc_VecDBL(i32 noundef %1)
  store ptr %call, ptr %t, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %3 = load ptr, ptr %lattice_trans.addr, align 8, !tbaa !5
  %size1 = getelementptr inbounds %struct.VecDBL, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %size1, align 8, !tbaa !53
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %is_found, align 4, !tbaa !25
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !25
  %6 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %7 = load ptr, ptr %lattice_trans.addr, align 8, !tbaa !5
  %vec = getelementptr inbounds %struct.VecDBL, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %vec, align 8, !tbaa !48
  %9 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [3 x double], ptr %8, i64 %idxprom
  %arraydecay = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %10 = load ptr, ptr %t, align 8, !tbaa !5
  %vec6 = getelementptr inbounds %struct.VecDBL, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %vec6, align 8, !tbaa !48
  %12 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %11, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 0
  %13 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %14 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call10 = call i32 @cel_is_overlap(ptr noundef %arraydecay, ptr noundef %arraydecay9, ptr noundef %13, double noundef %14)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body5
  store i32 1, ptr %is_found, align 4, !tbaa !25
  br label %for.end

if.end12:                                         ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %15 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond3, !llvm.loop !60

for.end:                                          ; preds = %if.then11, %for.cond3
  %16 = load i32, ptr %is_found, align 4, !tbaa !25
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.end24, label %if.then14

if.then14:                                        ; preds = %for.end
  %17 = load ptr, ptr %t, align 8, !tbaa !5
  %vec15 = getelementptr inbounds %struct.VecDBL, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %vec15, align 8, !tbaa !48
  %19 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %18, i64 %idxprom16
  %arraydecay18 = getelementptr inbounds [3 x double], ptr %arrayidx17, i64 0, i64 0
  %20 = load ptr, ptr %lattice_trans.addr, align 8, !tbaa !5
  %vec19 = getelementptr inbounds %struct.VecDBL, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %vec19, align 8, !tbaa !48
  %22 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [3 x double], ptr %21, i64 %idxprom20
  %arraydecay22 = getelementptr inbounds [3 x double], ptr %arrayidx21, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay18, ptr noundef %arraydecay22)
  %23 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, ptr %num_pure_trans, align 4, !tbaa !25
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %for.end
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %24 = load i32, ptr %i, align 4, !tbaa !25
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !61

for.end27:                                        ; preds = %for.cond
  %25 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %call28 = call ptr @mat_alloc_VecDBL(i32 noundef %25)
  store ptr %call28, ptr %pure_trans, align 8, !tbaa !5
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.end27
  %26 = load ptr, ptr %t, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %26)
  store ptr null, ptr %t, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %for.end27
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc43, %if.end31
  %27 = load i32, ptr %i, align 4, !tbaa !25
  %28 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %cmp33 = icmp slt i32 %27, %28
  br i1 %cmp33, label %for.body34, label %for.end45

for.body34:                                       ; preds = %for.cond32
  %29 = load ptr, ptr %pure_trans, align 8, !tbaa !5
  %vec35 = getelementptr inbounds %struct.VecDBL, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %vec35, align 8, !tbaa !48
  %31 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds [3 x double], ptr %30, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [3 x double], ptr %arrayidx37, i64 0, i64 0
  %32 = load ptr, ptr %t, align 8, !tbaa !5
  %vec39 = getelementptr inbounds %struct.VecDBL, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %vec39, align 8, !tbaa !48
  %34 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [3 x double], ptr %33, i64 %idxprom40
  %arraydecay42 = getelementptr inbounds [3 x double], ptr %arrayidx41, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay38, ptr noundef %arraydecay42)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body34
  %35 = load i32, ptr %i, align 4, !tbaa !25
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !25
  br label %for.cond32, !llvm.loop !62

for.end45:                                        ; preds = %for.cond32
  %36 = load ptr, ptr %t, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %36)
  store ptr null, ptr %t, align 8, !tbaa !5
  %37 = load ptr, ptr %pure_trans, align 8, !tbaa !5
  store ptr %37, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pure_trans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pure_trans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %is_found) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %38 = load ptr, ptr %retval, align 8
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define internal ptr @get_symmetry_in_original_cell(ptr noundef %t_mat, ptr noundef %inv_tmat, ptr noundef %lattice, ptr noundef %prim_sym, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %t_mat.addr = alloca ptr, align 8
  %inv_tmat.addr = alloca ptr, align 8
  %lattice.addr = alloca ptr, align 8
  %prim_sym.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %size_sym_orig = alloca i32, align 4
  %tmp_rot_d = alloca [3 x [3 x double]], align 16
  %tmp_lat_d = alloca [3 x [3 x double]], align 16
  %tmp_lat_i = alloca [3 x [3 x double]], align 16
  %tmp_mat = alloca [3 x [3 x double]], align 16
  %tmp_rot_i = alloca [3 x [3 x i32]], align 16
  %t_sym = alloca ptr, align 8
  %t_red_sym = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t_mat, ptr %t_mat.addr, align 8, !tbaa !5
  store ptr %inv_tmat, ptr %inv_tmat.addr, align 8, !tbaa !5
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %prim_sym, ptr %prim_sym.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_sym_orig) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_rot_d) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_lat_d) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_lat_i) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr %tmp_rot_i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_sym) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t_red_sym) #7
  store ptr null, ptr %t_sym, align 8, !tbaa !5
  store ptr null, ptr %t_red_sym, align 8, !tbaa !5
  %0 = load ptr, ptr %prim_sym.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !29
  %call = call ptr @sym_alloc_symmetry(i32 noundef %1)
  store ptr %call, ptr %t_sym, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %size_sym_orig, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %3 = load ptr, ptr %prim_sym.addr, align 8, !tbaa !5
  %size1 = getelementptr inbounds %struct.Symmetry, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %size1, align 8, !tbaa !29
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %5 = load ptr, ptr %inv_tmat.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %prim_sym.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %rot, align 8, !tbaa !31
  %8 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %7, i64 %idxprom
  %arraydecay3 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  call void @mat_multiply_matrix_di3(ptr noundef %arraydecay, ptr noundef %5, ptr noundef %arraydecay3)
  %arraydecay4 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_rot_d, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_mat, i64 0, i64 0
  %9 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  call void @mat_multiply_matrix_di3(ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %9)
  %arraydecay6 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_rot_i, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_rot_d, i64 0, i64 0
  call void @mat_cast_matrix_3d_to_3i(ptr noundef %arraydecay6, ptr noundef %arraydecay7)
  %arraydecay8 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_lat_i, i64 0, i64 0
  %10 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay9 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_rot_i, i64 0, i64 0
  call void @mat_multiply_matrix_di3(ptr noundef %arraydecay8, ptr noundef %10, ptr noundef %arraydecay9)
  %arraydecay10 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_lat_d, i64 0, i64 0
  %11 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay11 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_rot_d, i64 0, i64 0
  call void @mat_multiply_matrix_d3(ptr noundef %arraydecay10, ptr noundef %11, ptr noundef %arraydecay11)
  %arraydecay12 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_lat_i, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x [3 x double]], ptr %tmp_lat_d, i64 0, i64 0
  %12 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call14 = call i32 @mat_check_identity_matrix_d3(ptr noundef %arraydecay12, ptr noundef %arraydecay13, double noundef %12)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then15, label %if.end28

if.then15:                                        ; preds = %for.body
  %13 = load ptr, ptr %t_sym, align 8, !tbaa !5
  %rot16 = getelementptr inbounds %struct.Symmetry, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %rot16, align 8, !tbaa !31
  %15 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], ptr %14, i64 %idxprom17
  %arraydecay19 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx18, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [3 x [3 x i32]], ptr %tmp_rot_i, i64 0, i64 0
  call void @mat_copy_matrix_i3(ptr noundef %arraydecay19, ptr noundef %arraydecay20)
  %16 = load ptr, ptr %t_sym, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %trans, align 8, !tbaa !35
  %18 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %17, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [3 x double], ptr %arrayidx22, i64 0, i64 0
  %19 = load ptr, ptr %inv_tmat.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %prim_sym.addr, align 8, !tbaa !5
  %trans24 = getelementptr inbounds %struct.Symmetry, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %trans24, align 8, !tbaa !35
  %22 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [3 x double], ptr %21, i64 %idxprom25
  %arraydecay27 = getelementptr inbounds [3 x double], ptr %arrayidx26, i64 0, i64 0
  call void @mat_multiply_matrix_vector_d3(ptr noundef %arraydecay23, ptr noundef %19, ptr noundef %arraydecay27)
  %23 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %size_sym_orig, align 4, !tbaa !25
  br label %if.end28

if.end28:                                         ; preds = %if.then15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %24 = load i32, ptr %i, align 4, !tbaa !25
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %26 = load ptr, ptr %prim_sym.addr, align 8, !tbaa !5
  %size30 = getelementptr inbounds %struct.Symmetry, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %size30, align 8, !tbaa !29
  %cmp31 = icmp ne i32 %25, %27
  br i1 %cmp31, label %if.then32, label %if.end59

if.then32:                                        ; preds = %for.end
  %28 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %call33 = call ptr @sym_alloc_symmetry(i32 noundef %28)
  store ptr %call33, ptr %t_red_sym, align 8, !tbaa !5
  %cmp34 = icmp eq ptr %call33, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  %29 = load ptr, ptr %t_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %29)
  store ptr null, ptr %t_sym, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc56, %if.end36
  %30 = load i32, ptr %i, align 4, !tbaa !25
  %31 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %cmp38 = icmp slt i32 %30, %31
  br i1 %cmp38, label %for.body39, label %for.end58

for.body39:                                       ; preds = %for.cond37
  %32 = load ptr, ptr %t_red_sym, align 8, !tbaa !5
  %rot40 = getelementptr inbounds %struct.Symmetry, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %rot40, align 8, !tbaa !31
  %34 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom41 = sext i32 %34 to i64
  %arrayidx42 = getelementptr inbounds [3 x [3 x i32]], ptr %33, i64 %idxprom41
  %arraydecay43 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx42, i64 0, i64 0
  %35 = load ptr, ptr %t_sym, align 8, !tbaa !5
  %rot44 = getelementptr inbounds %struct.Symmetry, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %rot44, align 8, !tbaa !31
  %37 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds [3 x [3 x i32]], ptr %36, i64 %idxprom45
  %arraydecay47 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx46, i64 0, i64 0
  call void @mat_copy_matrix_i3(ptr noundef %arraydecay43, ptr noundef %arraydecay47)
  %38 = load ptr, ptr %t_red_sym, align 8, !tbaa !5
  %trans48 = getelementptr inbounds %struct.Symmetry, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %trans48, align 8, !tbaa !35
  %40 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom49 = sext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds [3 x double], ptr %39, i64 %idxprom49
  %arraydecay51 = getelementptr inbounds [3 x double], ptr %arrayidx50, i64 0, i64 0
  %41 = load ptr, ptr %t_sym, align 8, !tbaa !5
  %trans52 = getelementptr inbounds %struct.Symmetry, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %trans52, align 8, !tbaa !35
  %43 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom53 = sext i32 %43 to i64
  %arrayidx54 = getelementptr inbounds [3 x double], ptr %42, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [3 x double], ptr %arrayidx54, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay51, ptr noundef %arraydecay55)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body39
  %44 = load i32, ptr %i, align 4, !tbaa !25
  %inc57 = add nsw i32 %44, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !25
  br label %for.cond37, !llvm.loop !64

for.end58:                                        ; preds = %for.cond37
  %45 = load ptr, ptr %t_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %45)
  store ptr null, ptr %t_sym, align 8, !tbaa !5
  %46 = load ptr, ptr %t_red_sym, align 8, !tbaa !5
  store ptr %46, ptr %t_sym, align 8, !tbaa !5
  store ptr null, ptr %t_red_sym, align 8, !tbaa !5
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %for.end
  %47 = load ptr, ptr %t_sym, align 8, !tbaa !5
  store ptr %47, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_red_sym) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t_sym) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr %tmp_rot_i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_mat) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_lat_i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_lat_d) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %tmp_rot_d) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_sym_orig) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %48 = load ptr, ptr %retval, align 8
  ret ptr %48
}

; Function Attrs: nounwind uwtable
define internal ptr @copy_symmetry_upon_lattice_points(ptr noundef %pure_trans, ptr noundef %t_sym, i32 noundef %aperiodic_axis) #0 {
entry:
  %retval = alloca ptr, align 8
  %pure_trans.addr = alloca ptr, align 8
  %t_sym.addr = alloca ptr, align 8
  %aperiodic_axis.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %size_sym_orig = alloca i32, align 4
  %symmetry = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pure_trans, ptr %pure_trans.addr, align 8, !tbaa !5
  store ptr %t_sym, ptr %t_sym.addr, align 8, !tbaa !5
  store i32 %aperiodic_axis, ptr %aperiodic_axis.addr, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_sym_orig) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %symmetry) #7
  store ptr null, ptr %symmetry, align 8, !tbaa !5
  %0 = load ptr, ptr %t_sym.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !29
  store i32 %1, ptr %size_sym_orig, align 4, !tbaa !25
  %2 = load ptr, ptr %pure_trans.addr, align 8, !tbaa !5
  %size1 = getelementptr inbounds %struct.VecDBL, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %size1, align 8, !tbaa !53
  %4 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %mul = mul nsw i32 %3, %4
  %call = call ptr @sym_alloc_symmetry(i32 noundef %mul)
  store ptr %call, ptr %symmetry, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %6 = load ptr, ptr %pure_trans.addr, align 8, !tbaa !5
  %size2 = getelementptr inbounds %struct.VecDBL, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %size2, align 8, !tbaa !53
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc54, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !25
  %9 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end56

for.body6:                                        ; preds = %for.cond4
  %10 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %rot, align 8, !tbaa !31
  %12 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %13 = load i32, ptr %i, align 4, !tbaa !25
  %mul7 = mul nsw i32 %12, %13
  %14 = load i32, ptr %j, align 4, !tbaa !25
  %add = add nsw i32 %mul7, %14
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 %idxprom
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  %15 = load ptr, ptr %t_sym.addr, align 8, !tbaa !5
  %rot8 = getelementptr inbounds %struct.Symmetry, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %rot8, align 8, !tbaa !31
  %17 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [3 x [3 x i32]], ptr %16, i64 %idxprom9
  %arraydecay11 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx10, i64 0, i64 0
  call void @mat_copy_matrix_i3(ptr noundef %arraydecay, ptr noundef %arraydecay11)
  %18 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %trans, align 8, !tbaa !35
  %20 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %21 = load i32, ptr %i, align 4, !tbaa !25
  %mul12 = mul nsw i32 %20, %21
  %22 = load i32, ptr %j, align 4, !tbaa !25
  %add13 = add nsw i32 %mul12, %22
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %19, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [3 x double], ptr %arrayidx15, i64 0, i64 0
  %23 = load ptr, ptr %t_sym.addr, align 8, !tbaa !5
  %trans17 = getelementptr inbounds %struct.Symmetry, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %trans17, align 8, !tbaa !35
  %25 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %24, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay16, ptr noundef %arraydecay20)
  store i32 0, ptr %k, align 4, !tbaa !25
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body6
  %26 = load i32, ptr %k, align 4, !tbaa !25
  %cmp22 = icmp slt i32 %26, 3
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %27 = load ptr, ptr %pure_trans.addr, align 8, !tbaa !5
  %vec = getelementptr inbounds %struct.VecDBL, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %vec, align 8, !tbaa !48
  %29 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %28, i64 %idxprom24
  %30 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds [3 x double], ptr %arrayidx25, i64 0, i64 %idxprom26
  %31 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %32 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %trans28 = getelementptr inbounds %struct.Symmetry, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %trans28, align 8, !tbaa !35
  %34 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %35 = load i32, ptr %i, align 4, !tbaa !25
  %mul29 = mul nsw i32 %34, %35
  %36 = load i32, ptr %j, align 4, !tbaa !25
  %add30 = add nsw i32 %mul29, %36
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %33, i64 %idxprom31
  %37 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %arrayidx32, i64 0, i64 %idxprom33
  %38 = load double, ptr %arrayidx34, align 8, !tbaa !9
  %add35 = fadd double %38, %31
  store double %add35, ptr %arrayidx34, align 8, !tbaa !9
  %39 = load i32, ptr %k, align 4, !tbaa !25
  %40 = load i32, ptr %aperiodic_axis.addr, align 4, !tbaa !25
  %cmp36 = icmp ne i32 %39, %40
  br i1 %cmp36, label %if.then37, label %if.end53

if.then37:                                        ; preds = %for.body23
  %41 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %trans38 = getelementptr inbounds %struct.Symmetry, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %trans38, align 8, !tbaa !35
  %43 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %44 = load i32, ptr %i, align 4, !tbaa !25
  %mul39 = mul nsw i32 %43, %44
  %45 = load i32, ptr %j, align 4, !tbaa !25
  %add40 = add nsw i32 %mul39, %45
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds [3 x double], ptr %42, i64 %idxprom41
  %46 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds [3 x double], ptr %arrayidx42, i64 0, i64 %idxprom43
  %47 = load double, ptr %arrayidx44, align 8, !tbaa !9
  %call45 = call double @mat_Dmod1(double noundef %47)
  %48 = load ptr, ptr %symmetry, align 8, !tbaa !5
  %trans46 = getelementptr inbounds %struct.Symmetry, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %trans46, align 8, !tbaa !35
  %50 = load i32, ptr %size_sym_orig, align 4, !tbaa !25
  %51 = load i32, ptr %i, align 4, !tbaa !25
  %mul47 = mul nsw i32 %50, %51
  %52 = load i32, ptr %j, align 4, !tbaa !25
  %add48 = add nsw i32 %mul47, %52
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds [3 x double], ptr %49, i64 %idxprom49
  %53 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom51 = sext i32 %53 to i64
  %arrayidx52 = getelementptr inbounds [3 x double], ptr %arrayidx50, i64 0, i64 %idxprom51
  store double %call45, ptr %arrayidx52, align 8, !tbaa !9
  br label %if.end53

if.end53:                                         ; preds = %if.then37, %for.body23
  br label %for.inc

for.inc:                                          ; preds = %if.end53
  %54 = load i32, ptr %k, align 4, !tbaa !25
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %k, align 4, !tbaa !25
  br label %for.cond21, !llvm.loop !65

for.end:                                          ; preds = %for.cond21
  br label %for.inc54

for.inc54:                                        ; preds = %for.end
  %55 = load i32, ptr %j, align 4, !tbaa !25
  %inc55 = add nsw i32 %55, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !25
  br label %for.cond4, !llvm.loop !66

for.end56:                                        ; preds = %for.cond4
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %56 = load i32, ptr %i, align 4, !tbaa !25
  %inc58 = add nsw i32 %56, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !67

for.end59:                                        ; preds = %for.cond
  %57 = load ptr, ptr %symmetry, align 8, !tbaa !5
  store ptr %57, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %symmetry) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_sym_orig) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %58 = load ptr, ptr %retval, align 8
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define internal void @get_corners(ptr noundef %corners, ptr noundef %t_mat) #0 {
entry:
  %corners.addr = alloca ptr, align 8
  %t_mat.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %corners, ptr %corners.addr, align 8, !tbaa !5
  store ptr %t_mat, ptr %t_mat.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %corners.addr, align 8, !tbaa !5
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %1, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 0
  store i32 0, ptr %arrayidx1, align 4, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !25
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc19, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !25
  %cmp3 = icmp slt i32 %4, 3
  br i1 %cmp3, label %for.body4, label %for.end21

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc16, %for.body4
  %5 = load i32, ptr %j, align 4, !tbaa !25
  %cmp6 = icmp slt i32 %5, 3
  br i1 %cmp6, label %for.body7, label %for.end18

for.body7:                                        ; preds = %for.cond5
  %6 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %7 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [3 x i32], ptr %6, i64 %idxprom8
  %8 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %9 = load i32, ptr %arrayidx11, align 4, !tbaa !25
  %10 = load ptr, ptr %corners.addr, align 8, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], ptr %10, i64 %idxprom12
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %add = add nsw i32 %12, 1
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  store i32 %9, ptr %arrayidx15, align 4, !tbaa !25
  br label %for.inc16

for.inc16:                                        ; preds = %for.body7
  %13 = load i32, ptr %j, align 4, !tbaa !25
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, ptr %j, align 4, !tbaa !25
  br label %for.cond5, !llvm.loop !69

for.end18:                                        ; preds = %for.cond5
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %14 = load i32, ptr %i, align 4, !tbaa !25
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !25
  br label %for.cond2, !llvm.loop !70

for.end21:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc48, %for.end21
  %15 = load i32, ptr %i, align 4, !tbaa !25
  %cmp23 = icmp slt i32 %15, 3
  br i1 %cmp23, label %for.body24, label %for.end50

for.body24:                                       ; preds = %for.cond22
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc45, %for.body24
  %16 = load i32, ptr %j, align 4, !tbaa !25
  %cmp26 = icmp slt i32 %16, 3
  br i1 %cmp26, label %for.body27, label %for.end47

for.body27:                                       ; preds = %for.cond25
  %17 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %18 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr %17, i64 %idxprom28
  %19 = load i32, ptr %i, align 4, !tbaa !25
  %add30 = add nsw i32 %19, 1
  %rem = srem i32 %add30, 3
  %idxprom31 = sext i32 %rem to i64
  %arrayidx32 = getelementptr inbounds [3 x i32], ptr %arrayidx29, i64 0, i64 %idxprom31
  %20 = load i32, ptr %arrayidx32, align 4, !tbaa !25
  %21 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %22 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [3 x i32], ptr %21, i64 %idxprom33
  %23 = load i32, ptr %i, align 4, !tbaa !25
  %add35 = add nsw i32 %23, 2
  %rem36 = srem i32 %add35, 3
  %idxprom37 = sext i32 %rem36 to i64
  %arrayidx38 = getelementptr inbounds [3 x i32], ptr %arrayidx34, i64 0, i64 %idxprom37
  %24 = load i32, ptr %arrayidx38, align 4, !tbaa !25
  %add39 = add nsw i32 %20, %24
  %25 = load ptr, ptr %corners.addr, align 8, !tbaa !5
  %26 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], ptr %25, i64 %idxprom40
  %27 = load i32, ptr %i, align 4, !tbaa !25
  %add42 = add nsw i32 %27, 4
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %arrayidx41, i64 0, i64 %idxprom43
  store i32 %add39, ptr %arrayidx44, align 4, !tbaa !25
  br label %for.inc45

for.inc45:                                        ; preds = %for.body27
  %28 = load i32, ptr %j, align 4, !tbaa !25
  %inc46 = add nsw i32 %28, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !25
  br label %for.cond25, !llvm.loop !71

for.end47:                                        ; preds = %for.cond25
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %29 = load i32, ptr %i, align 4, !tbaa !25
  %inc49 = add nsw i32 %29, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !25
  br label %for.cond22, !llvm.loop !72

for.end50:                                        ; preds = %for.cond22
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc68, %for.end50
  %30 = load i32, ptr %i, align 4, !tbaa !25
  %cmp52 = icmp slt i32 %30, 3
  br i1 %cmp52, label %for.body53, label %for.end70

for.body53:                                       ; preds = %for.cond51
  %31 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom54 = sext i32 %32 to i64
  %arrayidx55 = getelementptr inbounds [3 x i32], ptr %31, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [3 x i32], ptr %arrayidx55, i64 0, i64 0
  %33 = load i32, ptr %arrayidx56, align 4, !tbaa !25
  %34 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %35 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom57 = sext i32 %35 to i64
  %arrayidx58 = getelementptr inbounds [3 x i32], ptr %34, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [3 x i32], ptr %arrayidx58, i64 0, i64 1
  %36 = load i32, ptr %arrayidx59, align 4, !tbaa !25
  %add60 = add nsw i32 %33, %36
  %37 = load ptr, ptr %t_mat.addr, align 8, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom61 = sext i32 %38 to i64
  %arrayidx62 = getelementptr inbounds [3 x i32], ptr %37, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [3 x i32], ptr %arrayidx62, i64 0, i64 2
  %39 = load i32, ptr %arrayidx63, align 4, !tbaa !25
  %add64 = add nsw i32 %add60, %39
  %40 = load ptr, ptr %corners.addr, align 8, !tbaa !5
  %41 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [8 x i32], ptr %40, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [8 x i32], ptr %arrayidx66, i64 0, i64 7
  store i32 %add64, ptr %arrayidx67, align 4, !tbaa !25
  br label %for.inc68

for.inc68:                                        ; preds = %for.body53
  %42 = load i32, ptr %i, align 4, !tbaa !25
  %inc69 = add nsw i32 %42, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !25
  br label %for.cond51, !llvm.loop !73

for.end70:                                        ; preds = %for.cond51
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare double @mat_Dmod1(double noundef) #3

declare i32 @cel_is_overlap(ptr noundef, ptr noundef, ptr noundef, double noundef) #3

declare void @mat_copy_vector_d3(ptr noundef, ptr noundef) #3

declare i32 @mat_check_identity_matrix_d3(ptr noundef, ptr noundef, double noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @get_bravais_exact_positions_and_lattice(ptr noundef %wyckoffs, ptr noundef %site_symmetry_symbols, ptr noundef %equiv_atoms, ptr noundef %std_mapping_to_primitive, ptr noundef %spacegroup, ptr noundef %primitive, double noundef %symprec) #0 {
entry:
  %retval = alloca ptr, align 8
  %wyckoffs.addr = alloca ptr, align 8
  %site_symmetry_symbols.addr = alloca ptr, align 8
  %equiv_atoms.addr = alloca ptr, align 8
  %std_mapping_to_primitive.addr = alloca ptr, align 8
  %spacegroup.addr = alloca ptr, align 8
  %primitive.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_pure_trans = alloca i32, align 4
  %wyckoffs_prim = alloca ptr, align 8
  %equiv_atoms_prim = alloca ptr, align 8
  %site_symmetry_symbols_prim = alloca ptr, align 8
  %conv_sym = alloca ptr, align 8
  %bravais = alloca ptr, align 8
  %conv_prim = alloca ptr, align 8
  %exact_positions = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wyckoffs, ptr %wyckoffs.addr, align 8, !tbaa !5
  store ptr %site_symmetry_symbols, ptr %site_symmetry_symbols.addr, align 8, !tbaa !5
  store ptr %equiv_atoms, ptr %equiv_atoms.addr, align 8, !tbaa !5
  store ptr %std_mapping_to_primitive, ptr %std_mapping_to_primitive.addr, align 8, !tbaa !5
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  store ptr %primitive, ptr %primitive.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pure_trans) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %wyckoffs_prim) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %equiv_atoms_prim) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %site_symmetry_symbols_prim) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conv_sym) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %bravais) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conv_prim) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %exact_positions) #7
  store ptr null, ptr %wyckoffs_prim, align 8, !tbaa !5
  store ptr null, ptr %equiv_atoms_prim, align 8, !tbaa !5
  store ptr null, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  store ptr null, ptr %conv_prim, align 8, !tbaa !5
  store ptr null, ptr %bravais, align 8, !tbaa !5
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  store ptr null, ptr %exact_positions, align 8, !tbaa !5
  %0 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !11
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %wyckoffs_prim, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size3 = getelementptr inbounds %struct.Cell, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %size3, align 8, !tbaa !11
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 7, %conv4
  %call6 = call noalias ptr @malloc(i64 noundef %mul5) #8
  store ptr %call6, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1)
  %6 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  call void @free(ptr noundef %6) #7
  store ptr null, ptr %wyckoffs_prim, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %7 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size12 = getelementptr inbounds %struct.Cell, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %size12, align 8, !tbaa !11
  %conv13 = sext i32 %8 to i64
  %mul14 = mul i64 4, %conv13
  %call15 = call noalias ptr @malloc(i64 noundef %mul14) #8
  store ptr %call15, ptr %equiv_atoms_prim, align 8, !tbaa !5
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end11
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.1)
  %10 = load ptr, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  call void @free(ptr noundef %10) #7
  store ptr null, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  %11 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  call void @free(ptr noundef %11) #7
  store ptr null, ptr %wyckoffs_prim, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %if.end20
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %13 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size21 = getelementptr inbounds %struct.Cell, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %size21, align 8, !tbaa !11
  %cmp22 = icmp slt i32 %12, %14
  br i1 %cmp22, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i32, ptr %15, i64 %idxprom
  store i32 -1, ptr %arrayidx, align 4, !tbaa !25
  %17 = load ptr, ptr %equiv_atoms_prim, align 8, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %17, i64 %idxprom24
  store i32 -1, ptr %arrayidx25, align 4, !tbaa !25
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %for.body
  %19 = load i32, ptr %j, align 4, !tbaa !25
  %cmp27 = icmp slt i32 %19, 7
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %20 = load ptr, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [7 x i8], ptr %20, i64 %idxprom30
  %22 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [7 x i8], ptr %arrayidx31, i64 0, i64 %idxprom32
  store i8 0, ptr %arrayidx33, align 1, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %for.body29
  %23 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond26, !llvm.loop !74

for.end:                                          ; preds = %for.cond26
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4, !tbaa !25
  %inc35 = add nsw i32 %24, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !75

for.end36:                                        ; preds = %for.cond
  %25 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %call37 = call ptr @get_conventional_primitive(ptr noundef %25, ptr noundef %26)
  store ptr %call37, ptr %conv_prim, align 8, !tbaa !5
  %cmp38 = icmp eq ptr %call37, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.end36
  %27 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  call void @free(ptr noundef %27) #7
  store ptr null, ptr %wyckoffs_prim, align 8, !tbaa !5
  %28 = load ptr, ptr %equiv_atoms_prim, align 8, !tbaa !5
  call void @free(ptr noundef %28) #7
  store ptr null, ptr %equiv_atoms_prim, align 8, !tbaa !5
  %29 = load ptr, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  call void @free(ptr noundef %29) #7
  store ptr null, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %for.end36
  %30 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number = getelementptr inbounds %struct.Spacegroup, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %hall_number, align 4, !tbaa !23
  %call42 = call ptr @spgdb_get_spacegroup_operations(i32 noundef %31)
  store ptr %call42, ptr %conv_sym, align 8, !tbaa !5
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end41
  br label %err

if.end46:                                         ; preds = %if.end41
  %32 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %call47 = call i32 @get_number_of_pure_translation(ptr noundef %32)
  store i32 %call47, ptr %num_pure_trans, align 4, !tbaa !25
  %33 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %lattice, align 8, !tbaa !14
  %35 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  call void @ref_get_conventional_lattice(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number48 = getelementptr inbounds %struct.Spacegroup, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %hall_number48, align 4, !tbaa !23
  %cmp49 = icmp sgt i32 %37, 0
  %38 = zext i1 %cmp49 to i64
  %cond = select i1 %cmp49, i32 -1, i32 2
  %39 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %aperiodic_axis = getelementptr inbounds %struct.Cell, ptr %39, i32 0, i32 1
  store i32 %cond, ptr %aperiodic_axis, align 4, !tbaa !40
  %40 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  %41 = load ptr, ptr %equiv_atoms_prim, align 8, !tbaa !5
  %42 = load ptr, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  %43 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %44 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %45 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %46 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number51 = getelementptr inbounds %struct.Spacegroup, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %hall_number51, align 4, !tbaa !23
  %48 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call52 = call ptr @ssm_get_exact_positions(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %45, i32 noundef %47, double noundef %48)
  store ptr %call52, ptr %exact_positions, align 8, !tbaa !5
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end46
  %49 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %49)
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  %50 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.6)
  %51 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.3, i32 noundef 479, ptr noundef @.str.4)
  br label %err

if.end58:                                         ; preds = %if.end46
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc69, %if.end58
  %52 = load i32, ptr %i, align 4, !tbaa !25
  %53 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %size60 = getelementptr inbounds %struct.Cell, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %size60, align 8, !tbaa !11
  %cmp61 = icmp slt i32 %52, %54
  br i1 %cmp61, label %for.body63, label %for.end71

for.body63:                                       ; preds = %for.cond59
  %55 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.Cell, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %position, align 8, !tbaa !76
  %57 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom64 = sext i32 %57 to i64
  %arrayidx65 = getelementptr inbounds [3 x double], ptr %56, i64 %idxprom64
  %arraydecay = getelementptr inbounds [3 x double], ptr %arrayidx65, i64 0, i64 0
  %58 = load ptr, ptr %exact_positions, align 8, !tbaa !5
  %vec = getelementptr inbounds %struct.VecDBL, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %vec, align 8, !tbaa !48
  %60 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom66 = sext i32 %60 to i64
  %arrayidx67 = getelementptr inbounds [3 x double], ptr %59, i64 %idxprom66
  %arraydecay68 = getelementptr inbounds [3 x double], ptr %arrayidx67, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay, ptr noundef %arraydecay68)
  br label %for.inc69

for.inc69:                                        ; preds = %for.body63
  %61 = load i32, ptr %i, align 4, !tbaa !25
  %inc70 = add nsw i32 %61, 1
  store i32 %inc70, ptr %i, align 4, !tbaa !25
  br label %for.cond59, !llvm.loop !77

for.end71:                                        ; preds = %for.cond59
  %62 = load ptr, ptr %wyckoffs.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %site_symmetry_symbols.addr, align 8, !tbaa !5
  %64 = load ptr, ptr %equiv_atoms.addr, align 8, !tbaa !5
  %65 = load ptr, ptr %std_mapping_to_primitive.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %67 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  %68 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %69 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  %70 = load ptr, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  %71 = load ptr, ptr %equiv_atoms_prim, align 8, !tbaa !5
  %call72 = call ptr @expand_positions_in_bravais(ptr noundef %62, ptr noundef %63, ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %67, i32 noundef %68, ptr noundef %69, ptr noundef %70, ptr noundef %71)
  store ptr %call72, ptr %bravais, align 8, !tbaa !5
  %72 = load ptr, ptr %exact_positions, align 8, !tbaa !5
  call void @mat_free_VecDBL(ptr noundef %72)
  store ptr null, ptr %exact_positions, align 8, !tbaa !5
  %73 = load ptr, ptr %conv_sym, align 8, !tbaa !5
  call void @sym_free_symmetry(ptr noundef %73)
  store ptr null, ptr %conv_sym, align 8, !tbaa !5
  br label %err

err:                                              ; preds = %for.end71, %if.then55, %if.then45
  %74 = load ptr, ptr %wyckoffs_prim, align 8, !tbaa !5
  call void @free(ptr noundef %74) #7
  store ptr null, ptr %wyckoffs_prim, align 8, !tbaa !5
  %75 = load ptr, ptr %equiv_atoms_prim, align 8, !tbaa !5
  call void @free(ptr noundef %75) #7
  store ptr null, ptr %equiv_atoms_prim, align 8, !tbaa !5
  %76 = load ptr, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  call void @free(ptr noundef %76) #7
  store ptr null, ptr %site_symmetry_symbols_prim, align 8, !tbaa !5
  %77 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  call void @cel_free_cell(ptr noundef %77)
  store ptr null, ptr %conv_prim, align 8, !tbaa !5
  %78 = load ptr, ptr %bravais, align 8, !tbaa !5
  store ptr %78, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then40, %if.then18, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %exact_positions) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %conv_prim) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %bravais) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %conv_sym) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %site_symmetry_symbols_prim) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %equiv_atoms_prim) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %wyckoffs_prim) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pure_trans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %79 = load ptr, ptr %retval, align 8
  ret ptr %79
}

; Function Attrs: nounwind uwtable
define internal i32 @set_crystallographic_orbits(ptr noundef %equiv_atoms_cell, ptr noundef %primitive, ptr noundef %cell, ptr noundef %equiv_atoms_prim, ptr noundef %mapping_table) #0 {
entry:
  %retval = alloca i32, align 4
  %equiv_atoms_cell.addr = alloca ptr, align 8
  %primitive.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %equiv_atoms_prim.addr = alloca ptr, align 8
  %mapping_table.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %equiv_atoms = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %equiv_atoms_cell, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  store ptr %primitive, ptr %primitive.addr, align 8, !tbaa !5
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %equiv_atoms_prim, ptr %equiv_atoms_prim.addr, align 8, !tbaa !5
  store ptr %mapping_table, ptr %mapping_table.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %equiv_atoms) #7
  store ptr null, ptr %equiv_atoms, align 8, !tbaa !5
  %0 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !11
  %conv = sext i32 %1 to i64
  %mul = mul i64 4, %conv
  %call = call noalias ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr %equiv_atoms, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !25
  %4 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size3 = getelementptr inbounds %struct.Cell, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %size3, align 8, !tbaa !11
  %cmp4 = icmp slt i32 %3, %5
  br i1 %cmp4, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !25
  %7 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size7 = getelementptr inbounds %struct.Cell, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %size7, align 8, !tbaa !11
  %cmp8 = icmp slt i32 %6, %8
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %9 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !25
  %12 = load ptr, ptr %equiv_atoms_prim.addr, align 8, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %12, i64 %idxprom11
  %14 = load i32, ptr %arrayidx12, align 4, !tbaa !25
  %cmp13 = icmp eq i32 %11, %14
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %for.body10
  %15 = load i32, ptr %j, align 4, !tbaa !25
  %16 = load ptr, ptr %equiv_atoms, align 8, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %16, i64 %idxprom16
  store i32 %15, ptr %arrayidx17, align 4, !tbaa !25
  br label %for.end

if.end18:                                         ; preds = %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %18 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond6, !llvm.loop !78

for.end:                                          ; preds = %if.then15, %for.cond6
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4, !tbaa !25
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !79

for.end21:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.end21
  %20 = load i32, ptr %i, align 4, !tbaa !25
  %21 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size23 = getelementptr inbounds %struct.Cell, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %size23, align 8, !tbaa !11
  %cmp24 = icmp slt i32 %20, %22
  br i1 %cmp24, label %for.body26, label %for.end35

for.body26:                                       ; preds = %for.cond22
  %23 = load ptr, ptr %equiv_atoms, align 8, !tbaa !5
  %24 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %25 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom27 = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %24, i64 %idxprom27
  %26 = load i32, ptr %arrayidx28, align 4, !tbaa !25
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %23, i64 %idxprom29
  %27 = load i32, ptr %arrayidx30, align 4, !tbaa !25
  %28 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %28, i64 %idxprom31
  store i32 %27, ptr %arrayidx32, align 4, !tbaa !25
  br label %for.inc33

for.inc33:                                        ; preds = %for.body26
  %30 = load i32, ptr %i, align 4, !tbaa !25
  %inc34 = add nsw i32 %30, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !25
  br label %for.cond22, !llvm.loop !80

for.end35:                                        ; preds = %for.cond22
  %31 = load ptr, ptr %equiv_atoms, align 8, !tbaa !5
  call void @free(ptr noundef %31) #7
  store ptr null, ptr %equiv_atoms, align 8, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %equiv_atoms) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

declare void @spgdb_get_operation_index(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @set_equivalent_atoms_broken_symmetry(ptr noundef %equiv_atoms_cell, ptr noundef %cell, ptr noundef %symmetry, ptr noundef %mapping_table, double noundef %symprec) #0 {
entry:
  %equiv_atoms_cell.addr = alloca ptr, align 8
  %cell.addr = alloca ptr, align 8
  %symmetry.addr = alloca ptr, align 8
  %mapping_table.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %periodic_axes = alloca [2 x i32], align 4
  store ptr %equiv_atoms_cell, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %symmetry, ptr %symmetry.addr, align 8, !tbaa !5
  store ptr %mapping_table, ptr %mapping_table.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %periodic_axes) #7
  %0 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %aperiodic_axis = getelementptr inbounds %struct.Cell, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %aperiodic_axis, align 4, !tbaa !40
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else26

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %if.then
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %3 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %size, align 8, !tbaa !11
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %6 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  store i32 %5, ptr %arrayidx, align 4, !tbaa !25
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !25
  %9 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size3 = getelementptr inbounds %struct.Cell, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %size3, align 8, !tbaa !11
  %cmp4 = icmp slt i32 %8, %10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %11 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %11, i64 %idxprom6
  %13 = load i32, ptr %arrayidx7, align 4, !tbaa !25
  %14 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8
  %16 = load i32, ptr %arrayidx9, align 4, !tbaa !25
  %cmp10 = icmp eq i32 %13, %16
  br i1 %cmp10, label %if.then11, label %if.end22

if.then11:                                        ; preds = %for.body5
  %17 = load i32, ptr %i, align 4, !tbaa !25
  %18 = load i32, ptr %j, align 4, !tbaa !25
  %cmp12 = icmp eq i32 %17, %18
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %19 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !25
  %21 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %23 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call = call i32 @search_equivalent_atom(i32 noundef %20, ptr noundef %21, ptr noundef %22, double noundef %23)
  %idxprom14 = sext i32 %call to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %19, i64 %idxprom14
  %24 = load i32, ptr %arrayidx15, align 4, !tbaa !25
  %25 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %25, i64 %idxprom16
  store i32 %24, ptr %arrayidx17, align 4, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %if.then11
  %27 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %28 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %27, i64 %idxprom18
  %29 = load i32, ptr %arrayidx19, align 4, !tbaa !25
  %30 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom20 = sext i32 %31 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %30, i64 %idxprom20
  store i32 %29, ptr %arrayidx21, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  br label %for.end

if.end22:                                         ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %32 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond2, !llvm.loop !81

for.end:                                          ; preds = %if.end, %for.cond2
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %33 = load i32, ptr %i, align 4, !tbaa !25
  %inc24 = add nsw i32 %33, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !82

for.end25:                                        ; preds = %for.cond
  br label %if.end76

if.else26:                                        ; preds = %entry
  store i32 0, ptr %j, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc37, %if.else26
  %34 = load i32, ptr %i, align 4, !tbaa !25
  %cmp28 = icmp slt i32 %34, 3
  br i1 %cmp28, label %for.body29, label %for.end39

for.body29:                                       ; preds = %for.cond27
  %35 = load i32, ptr %i, align 4, !tbaa !25
  %36 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %aperiodic_axis30 = getelementptr inbounds %struct.Cell, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %aperiodic_axis30, align 4, !tbaa !40
  %cmp31 = icmp ne i32 %35, %37
  br i1 %cmp31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %for.body29
  %38 = load i32, ptr %i, align 4, !tbaa !25
  %39 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds [2 x i32], ptr %periodic_axes, i64 0, i64 %idxprom33
  store i32 %38, ptr %arrayidx34, align 4, !tbaa !25
  %40 = load i32, ptr %j, align 4, !tbaa !25
  %inc35 = add nsw i32 %40, 1
  store i32 %inc35, ptr %j, align 4, !tbaa !25
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.body29
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %41 = load i32, ptr %i, align 4, !tbaa !25
  %inc38 = add nsw i32 %41, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !25
  br label %for.cond27, !llvm.loop !83

for.end39:                                        ; preds = %for.cond27
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc73, %for.end39
  %42 = load i32, ptr %i, align 4, !tbaa !25
  %43 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size41 = getelementptr inbounds %struct.Cell, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %size41, align 8, !tbaa !11
  %cmp42 = icmp slt i32 %42, %44
  br i1 %cmp42, label %for.body43, label %for.end75

for.body43:                                       ; preds = %for.cond40
  %45 = load i32, ptr %i, align 4, !tbaa !25
  %46 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %47 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %46, i64 %idxprom44
  store i32 %45, ptr %arrayidx45, align 4, !tbaa !25
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc70, %for.body43
  %48 = load i32, ptr %j, align 4, !tbaa !25
  %49 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %size47 = getelementptr inbounds %struct.Cell, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %size47, align 8, !tbaa !11
  %cmp48 = icmp slt i32 %48, %50
  br i1 %cmp48, label %for.body49, label %for.end72

for.body49:                                       ; preds = %for.cond46
  %51 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %52 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %51, i64 %idxprom50
  %53 = load i32, ptr %arrayidx51, align 4, !tbaa !25
  %54 = load ptr, ptr %mapping_table.addr, align 8, !tbaa !5
  %55 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom52 = sext i32 %55 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %54, i64 %idxprom52
  %56 = load i32, ptr %arrayidx53, align 4, !tbaa !25
  %cmp54 = icmp eq i32 %53, %56
  br i1 %cmp54, label %if.then55, label %if.end69

if.then55:                                        ; preds = %for.body49
  %57 = load i32, ptr %i, align 4, !tbaa !25
  %58 = load i32, ptr %j, align 4, !tbaa !25
  %cmp56 = icmp eq i32 %57, %58
  br i1 %cmp56, label %if.then57, label %if.else63

if.then57:                                        ; preds = %if.then55
  %59 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %60 = load i32, ptr %i, align 4, !tbaa !25
  %61 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %62 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [2 x i32], ptr %periodic_axes, i64 0, i64 0
  %63 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call58 = call i32 @search_layer_equivalent_atom(i32 noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %arraydecay, double noundef %63)
  %idxprom59 = sext i32 %call58 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %59, i64 %idxprom59
  %64 = load i32, ptr %arrayidx60, align 4, !tbaa !25
  %65 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %66 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom61 = sext i32 %66 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %65, i64 %idxprom61
  store i32 %64, ptr %arrayidx62, align 4, !tbaa !25
  br label %if.end68

if.else63:                                        ; preds = %if.then55
  %67 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %68 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom64 = sext i32 %68 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %67, i64 %idxprom64
  %69 = load i32, ptr %arrayidx65, align 4, !tbaa !25
  %70 = load ptr, ptr %equiv_atoms_cell.addr, align 8, !tbaa !5
  %71 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom66 = sext i32 %71 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %70, i64 %idxprom66
  store i32 %69, ptr %arrayidx67, align 4, !tbaa !25
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.then57
  br label %for.end72

if.end69:                                         ; preds = %for.body49
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %72 = load i32, ptr %j, align 4, !tbaa !25
  %inc71 = add nsw i32 %72, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !25
  br label %for.cond46, !llvm.loop !84

for.end72:                                        ; preds = %if.end68, %for.cond46
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %73 = load i32, ptr %i, align 4, !tbaa !25
  %inc74 = add nsw i32 %73, 1
  store i32 %inc74, ptr %i, align 4, !tbaa !25
  br label %for.cond40, !llvm.loop !85

for.end75:                                        ; preds = %for.cond40
  br label %if.end76

if.end76:                                         ; preds = %for.end75, %for.end25
  call void @llvm.lifetime.end.p0(i64 8, ptr %periodic_axes) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @get_conventional_primitive(ptr noundef %spacegroup, ptr noundef %primitive) #0 {
entry:
  %retval = alloca ptr, align 8
  %spacegroup.addr = alloca ptr, align 8
  %primitive.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %inv_brv = alloca [3 x [3 x double]], align 16
  %trans_mat = alloca [3 x [3 x double]], align 16
  %conv_prim = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  store ptr %primitive, ptr %primitive.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %inv_brv) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %trans_mat) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %conv_prim) #7
  store ptr null, ptr %conv_prim, align 8, !tbaa !5
  %0 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !11
  %2 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %tensor_rank = getelementptr inbounds %struct.Cell, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %tensor_rank, align 8, !tbaa !86
  %call = call ptr @cel_alloc_cell(i32 noundef %1, i32 noundef %3)
  store ptr %call, ptr %conv_prim, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %inv_brv, i64 0, i64 0
  %4 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice = getelementptr inbounds %struct.Spacegroup, ptr %4, i32 0, i32 9
  %arraydecay1 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice, i64 0, i64 0
  %call2 = call i32 @mat_inverse_matrix_d3(ptr noundef %arraydecay, ptr noundef %arraydecay1, double noundef 0.000000e+00)
  %arraydecay3 = getelementptr inbounds [3 x [3 x double]], ptr %trans_mat, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [3 x [3 x double]], ptr %inv_brv, i64 0, i64 0
  %5 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %lattice, align 8, !tbaa !14
  call void @mat_multiply_matrix_d3(ptr noundef %arraydecay3, ptr noundef %arraydecay4, ptr noundef %6)
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !25
  %8 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %size5 = getelementptr inbounds %struct.Cell, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %size5, align 8, !tbaa !11
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %types = getelementptr inbounds %struct.Cell, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %types, align 8, !tbaa !87
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !25
  %14 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %types7 = getelementptr inbounds %struct.Cell, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %types7, align 8, !tbaa !87
  %16 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i64 %idxprom8
  store i32 %13, ptr %arrayidx9, align 4, !tbaa !25
  %17 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.Cell, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %position, align 8, !tbaa !76
  %19 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %18, i64 %idxprom10
  %arraydecay12 = getelementptr inbounds [3 x double], ptr %arrayidx11, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x [3 x double]], ptr %trans_mat, i64 0, i64 0
  %20 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %position14 = getelementptr inbounds %struct.Cell, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %position14, align 8, !tbaa !76
  %22 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %21, i64 %idxprom15
  %arraydecay17 = getelementptr inbounds [3 x double], ptr %arrayidx16, i64 0, i64 0
  call void @mat_multiply_matrix_vector_d3(ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %arraydecay17)
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body
  %23 = load i32, ptr %j, align 4, !tbaa !25
  %cmp19 = icmp slt i32 %23, 3
  br i1 %cmp19, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %origin_shift = getelementptr inbounds %struct.Spacegroup, ptr %24, i32 0, i32 10
  %25 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %origin_shift, i64 0, i64 %idxprom21
  %26 = load double, ptr %arrayidx22, align 8, !tbaa !9
  %27 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %position23 = getelementptr inbounds %struct.Cell, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %position23, align 8, !tbaa !76
  %29 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %28, i64 %idxprom24
  %30 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds [3 x double], ptr %arrayidx25, i64 0, i64 %idxprom26
  %31 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %add = fadd double %31, %26
  store double %add, ptr %arrayidx27, align 8, !tbaa !9
  %32 = load ptr, ptr %primitive.addr, align 8, !tbaa !5
  %aperiodic_axis = getelementptr inbounds %struct.Cell, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %aperiodic_axis, align 4, !tbaa !40
  %cmp28 = icmp eq i32 %33, -1
  br i1 %cmp28, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body20
  %34 = load i32, ptr %j, align 4, !tbaa !25
  %cmp29 = icmp ne i32 %34, 2
  br i1 %cmp29, label %if.then30, label %if.end42

if.then30:                                        ; preds = %lor.lhs.false, %for.body20
  %35 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %position31 = getelementptr inbounds %struct.Cell, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %position31, align 8, !tbaa !76
  %37 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds [3 x double], ptr %36, i64 %idxprom32
  %38 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds [3 x double], ptr %arrayidx33, i64 0, i64 %idxprom34
  %39 = load double, ptr %arrayidx35, align 8, !tbaa !9
  %call36 = call double @mat_Dmod1(double noundef %39)
  %40 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  %position37 = getelementptr inbounds %struct.Cell, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %position37, align 8, !tbaa !76
  %42 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds [3 x double], ptr %41, i64 %idxprom38
  %43 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds [3 x double], ptr %arrayidx39, i64 0, i64 %idxprom40
  store double %call36, ptr %arrayidx41, align 8, !tbaa !9
  br label %if.end42

if.end42:                                         ; preds = %if.then30, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %44 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond18, !llvm.loop !88

for.end:                                          ; preds = %for.cond18
  br label %for.inc43

for.inc43:                                        ; preds = %for.end
  %45 = load i32, ptr %i, align 4, !tbaa !25
  %inc44 = add nsw i32 %45, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !89

for.end45:                                        ; preds = %for.cond
  %46 = load ptr, ptr %conv_prim, align 8, !tbaa !5
  store ptr %46, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %conv_prim) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %trans_mat) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %inv_brv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %47 = load ptr, ptr %retval, align 8
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define internal i32 @get_number_of_pure_translation(ptr noundef %conv_sym) #0 {
entry:
  %conv_sym.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_pure_trans = alloca i32, align 4
  store ptr %conv_sym, ptr %conv_sym.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_pure_trans) #7
  store i32 0, ptr %num_pure_trans, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !25
  %1 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %size, align 8, !tbaa !29
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %rot, align 8, !tbaa !31
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %4, i64 %idxprom
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  %call = call i32 @mat_check_identity_matrix_i3(ptr noundef @identity, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %num_pure_trans, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !25
  %inc1 = add nsw i32 %7, 1
  store i32 %inc1, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %num_pure_trans, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_pure_trans) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @ref_get_conventional_lattice(ptr noundef %lattice, ptr noundef %spacegroup) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %spacegroup.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %metric = alloca [3 x [3 x double]], align 16
  %pointgroup = alloca %struct.Pointgroup, align 4
  %tmp = alloca %struct.Pointgroup, align 4
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %spacegroup, ptr %spacegroup.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %metric) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %pointgroup) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #7
  %0 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %pointgroup_number = getelementptr inbounds %struct.Spacegroup, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %pointgroup_number, align 8, !tbaa !91
  call void @ptg_get_pointgroup(ptr sret(%struct.Pointgroup) align 4 %tmp, i32 noundef %1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pointgroup, ptr align 4 %tmp, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #7
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !25
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x double], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  store double 0.000000e+00, ptr %arrayidx5, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond1, !llvm.loop !93

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %8 = load i32, ptr %i, align 4, !tbaa !25
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !94

for.end8:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  %9 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %bravais_lattice = getelementptr inbounds %struct.Spacegroup, ptr %9, i32 0, i32 9
  %arraydecay9 = getelementptr inbounds [3 x [3 x double]], ptr %bravais_lattice, i64 0, i64 0
  call void @mat_get_metric(ptr noundef %arraydecay, ptr noundef %arraydecay9)
  %holohedry = getelementptr inbounds %struct.Pointgroup, ptr %pointgroup, i32 0, i32 3
  %10 = load i32, ptr %holohedry, align 4, !tbaa !95
  switch i32 %10, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb18
    i32 4, label %sw.bb20
    i32 5, label %sw.bb22
    i32 6, label %sw.bb32
    i32 7, label %sw.bb34
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.end8
  %11 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay10 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_tricli(ptr noundef %11, ptr noundef %arraydecay10)
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.end8
  %12 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %hall_number = getelementptr inbounds %struct.Spacegroup, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %hall_number, align 4, !tbaa !23
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb11
  %14 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay13 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  %15 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %choice = getelementptr inbounds %struct.Spacegroup, ptr %15, i32 0, i32 8
  %arraydecay14 = getelementptr inbounds [6 x i8], ptr %choice, i64 0, i64 0
  call void @set_monocli(ptr noundef %14, ptr noundef %arraydecay13, ptr noundef %arraydecay14)
  br label %if.end

if.else:                                          ; preds = %sw.bb11
  %16 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay15 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  %17 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %choice16 = getelementptr inbounds %struct.Spacegroup, ptr %17, i32 0, i32 8
  %arraydecay17 = getelementptr inbounds [6 x i8], ptr %choice16, i64 0, i64 0
  call void @set_layer_monocli(ptr noundef %16, ptr noundef %arraydecay15, ptr noundef %arraydecay17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb18:                                          ; preds = %for.end8
  %18 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay19 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_ortho(ptr noundef %18, ptr noundef %arraydecay19)
  br label %sw.epilog

sw.bb20:                                          ; preds = %for.end8
  %19 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay21 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_tetra(ptr noundef %19, ptr noundef %arraydecay21)
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.end8
  %20 = load ptr, ptr %spacegroup.addr, align 8, !tbaa !5
  %choice23 = getelementptr inbounds %struct.Spacegroup, ptr %20, i32 0, i32 8
  %arrayidx24 = getelementptr inbounds [6 x i8], ptr %choice23, i64 0, i64 0
  %21 = load i8, ptr %arrayidx24, align 1, !tbaa !41
  %conv = sext i8 %21 to i32
  %cmp25 = icmp eq i32 %conv, 82
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %sw.bb22
  %22 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay28 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_rhomb(ptr noundef %22, ptr noundef %arraydecay28)
  br label %if.end31

if.else29:                                        ; preds = %sw.bb22
  %23 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay30 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_trigo(ptr noundef %23, ptr noundef %arraydecay30)
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  br label %sw.epilog

sw.bb32:                                          ; preds = %for.end8
  %24 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay33 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_trigo(ptr noundef %24, ptr noundef %arraydecay33)
  br label %sw.epilog

sw.bb34:                                          ; preds = %for.end8
  %25 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arraydecay35 = getelementptr inbounds [3 x [3 x double]], ptr %metric, i64 0, i64 0
  call void @set_cubic(ptr noundef %25, ptr noundef %arraydecay35)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end8, %for.end8, %sw.bb34, %sw.bb32, %if.end31, %sw.bb20, %sw.bb18, %if.end, %sw.bb
  call void @llvm.lifetime.end.p0(i64 24, ptr %pointgroup) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %metric) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare ptr @ssm_get_exact_positions(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, double noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @expand_positions_in_bravais(ptr noundef %wyckoffs, ptr noundef %site_symmetry_symbols, ptr noundef %equiv_atoms, ptr noundef %std_mapping_to_primitive, ptr noundef %conv_prim, ptr noundef %conv_sym, i32 noundef %num_pure_trans, ptr noundef %wyckoffs_prim, ptr noundef %site_symmetry_symbols_prim, ptr noundef %equiv_atoms_prim) #0 {
entry:
  %retval = alloca ptr, align 8
  %wyckoffs.addr = alloca ptr, align 8
  %site_symmetry_symbols.addr = alloca ptr, align 8
  %equiv_atoms.addr = alloca ptr, align 8
  %std_mapping_to_primitive.addr = alloca ptr, align 8
  %conv_prim.addr = alloca ptr, align 8
  %conv_sym.addr = alloca ptr, align 8
  %num_pure_trans.addr = alloca i32, align 4
  %wyckoffs_prim.addr = alloca ptr, align 8
  %site_symmetry_symbols_prim.addr = alloca ptr, align 8
  %equiv_atoms_prim.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lattice_rank = alloca i32, align 4
  %num_atom = alloca i32, align 4
  %bravais = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %wyckoffs, ptr %wyckoffs.addr, align 8, !tbaa !5
  store ptr %site_symmetry_symbols, ptr %site_symmetry_symbols.addr, align 8, !tbaa !5
  store ptr %equiv_atoms, ptr %equiv_atoms.addr, align 8, !tbaa !5
  store ptr %std_mapping_to_primitive, ptr %std_mapping_to_primitive.addr, align 8, !tbaa !5
  store ptr %conv_prim, ptr %conv_prim.addr, align 8, !tbaa !5
  store ptr %conv_sym, ptr %conv_sym.addr, align 8, !tbaa !5
  store i32 %num_pure_trans, ptr %num_pure_trans.addr, align 4, !tbaa !25
  store ptr %wyckoffs_prim, ptr %wyckoffs_prim.addr, align 8, !tbaa !5
  store ptr %site_symmetry_symbols_prim, ptr %site_symmetry_symbols_prim.addr, align 8, !tbaa !5
  store ptr %equiv_atoms_prim, ptr %equiv_atoms_prim.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lattice_rank) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_atom) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %bravais) #7
  store ptr null, ptr %bravais, align 8, !tbaa !5
  %0 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Cell, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %size, align 8, !tbaa !11
  %2 = load i32, ptr %num_pure_trans.addr, align 4, !tbaa !25
  %mul = mul nsw i32 %1, %2
  %3 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %tensor_rank = getelementptr inbounds %struct.Cell, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %tensor_rank, align 8, !tbaa !86
  %call = call ptr @cel_alloc_cell(i32 noundef %mul, i32 noundef %4)
  store ptr %call, ptr %bravais, align 8, !tbaa !5
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %num_atom, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %6 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %size1 = getelementptr inbounds %struct.Symmetry, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %size1, align 8, !tbaa !29
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %rot, align 8, !tbaa !31
  %10 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %9, i64 %idxprom
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  %call3 = call i32 @mat_check_identity_matrix_i3(ptr noundef @identity, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end61

if.then4:                                         ; preds = %for.body
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc58, %if.then4
  %11 = load i32, ptr %j, align 4, !tbaa !25
  %12 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %size6 = getelementptr inbounds %struct.Cell, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %size6, align 8, !tbaa !11
  %cmp7 = icmp slt i32 %11, %13
  br i1 %cmp7, label %for.body8, label %for.end60

for.body8:                                        ; preds = %for.cond5
  %14 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %types = getelementptr inbounds %struct.Cell, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %types, align 8, !tbaa !87
  %16 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 %idxprom9
  %17 = load i32, ptr %arrayidx10, align 4, !tbaa !25
  %18 = load ptr, ptr %bravais, align 8, !tbaa !5
  %types11 = getelementptr inbounds %struct.Cell, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %types11, align 8, !tbaa !87
  %20 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %19, i64 %idxprom12
  store i32 %17, ptr %arrayidx13, align 4, !tbaa !25
  %21 = load ptr, ptr %bravais, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.Cell, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %position, align 8, !tbaa !76
  %23 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %22, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [3 x double], ptr %arrayidx15, i64 0, i64 0
  %24 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %position17 = getelementptr inbounds %struct.Cell, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %position17, align 8, !tbaa !76
  %26 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %25, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay16, ptr noundef %arraydecay20)
  store i32 0, ptr %k, align 4, !tbaa !25
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body8
  %27 = load i32, ptr %k, align 4, !tbaa !25
  %cmp22 = icmp slt i32 %27, 3
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %28 = load ptr, ptr %conv_sym.addr, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %trans, align 8, !tbaa !35
  %30 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %29, i64 %idxprom24
  %31 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [3 x double], ptr %arrayidx25, i64 0, i64 %idxprom26
  %32 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %33 = load ptr, ptr %bravais, align 8, !tbaa !5
  %position28 = getelementptr inbounds %struct.Cell, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %position28, align 8, !tbaa !76
  %35 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom29 = sext i32 %35 to i64
  %arrayidx30 = getelementptr inbounds [3 x double], ptr %34, i64 %idxprom29
  %36 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %arrayidx30, i64 0, i64 %idxprom31
  %37 = load double, ptr %arrayidx32, align 8, !tbaa !9
  %add = fadd double %37, %32
  store double %add, ptr %arrayidx32, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %38 = load i32, ptr %k, align 4, !tbaa !25
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %k, align 4, !tbaa !25
  br label %for.cond21, !llvm.loop !97

for.end:                                          ; preds = %for.cond21
  %39 = load ptr, ptr %wyckoffs_prim.addr, align 8, !tbaa !5
  %40 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %39, i64 %idxprom33
  %41 = load i32, ptr %arrayidx34, align 4, !tbaa !25
  %42 = load ptr, ptr %wyckoffs.addr, align 8, !tbaa !5
  %43 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %42, i64 %idxprom35
  store i32 %41, ptr %arrayidx36, align 4, !tbaa !25
  store i32 0, ptr %k, align 4, !tbaa !25
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end
  %44 = load i32, ptr %k, align 4, !tbaa !25
  %cmp38 = icmp slt i32 %44, 7
  br i1 %cmp38, label %for.body39, label %for.end50

for.body39:                                       ; preds = %for.cond37
  %45 = load ptr, ptr %site_symmetry_symbols_prim.addr, align 8, !tbaa !5
  %46 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom40 = sext i32 %46 to i64
  %arrayidx41 = getelementptr inbounds [7 x i8], ptr %45, i64 %idxprom40
  %47 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds [7 x i8], ptr %arrayidx41, i64 0, i64 %idxprom42
  %48 = load i8, ptr %arrayidx43, align 1, !tbaa !41
  %49 = load ptr, ptr %site_symmetry_symbols.addr, align 8, !tbaa !5
  %50 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom44 = sext i32 %50 to i64
  %arrayidx45 = getelementptr inbounds [7 x i8], ptr %49, i64 %idxprom44
  %51 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom46 = sext i32 %51 to i64
  %arrayidx47 = getelementptr inbounds [7 x i8], ptr %arrayidx45, i64 0, i64 %idxprom46
  store i8 %48, ptr %arrayidx47, align 1, !tbaa !41
  br label %for.inc48

for.inc48:                                        ; preds = %for.body39
  %52 = load i32, ptr %k, align 4, !tbaa !25
  %inc49 = add nsw i32 %52, 1
  store i32 %inc49, ptr %k, align 4, !tbaa !25
  br label %for.cond37, !llvm.loop !98

for.end50:                                        ; preds = %for.cond37
  %53 = load ptr, ptr %equiv_atoms_prim.addr, align 8, !tbaa !5
  %54 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom51 = sext i32 %54 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %53, i64 %idxprom51
  %55 = load i32, ptr %arrayidx52, align 4, !tbaa !25
  %56 = load ptr, ptr %equiv_atoms.addr, align 8, !tbaa !5
  %57 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom53 = sext i32 %57 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %56, i64 %idxprom53
  store i32 %55, ptr %arrayidx54, align 4, !tbaa !25
  %58 = load i32, ptr %j, align 4, !tbaa !25
  %59 = load ptr, ptr %std_mapping_to_primitive.addr, align 8, !tbaa !5
  %60 = load i32, ptr %num_atom, align 4, !tbaa !25
  %idxprom55 = sext i32 %60 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %59, i64 %idxprom55
  store i32 %58, ptr %arrayidx56, align 4, !tbaa !25
  %61 = load i32, ptr %num_atom, align 4, !tbaa !25
  %inc57 = add nsw i32 %61, 1
  store i32 %inc57, ptr %num_atom, align 4, !tbaa !25
  br label %for.inc58

for.inc58:                                        ; preds = %for.end50
  %62 = load i32, ptr %j, align 4, !tbaa !25
  %inc59 = add nsw i32 %62, 1
  store i32 %inc59, ptr %j, align 4, !tbaa !25
  br label %for.cond5, !llvm.loop !99

for.end60:                                        ; preds = %for.cond5
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %for.body
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %63 = load i32, ptr %i, align 4, !tbaa !25
  %inc63 = add nsw i32 %63, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !100

for.end64:                                        ; preds = %for.cond
  %64 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %aperiodic_axis = getelementptr inbounds %struct.Cell, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %aperiodic_axis, align 4, !tbaa !40
  %cmp65 = icmp eq i32 %65, -1
  br i1 %cmp65, label %if.then66, label %if.else

if.then66:                                        ; preds = %for.end64
  store i32 3, ptr %lattice_rank, align 4, !tbaa !25
  br label %if.end67

if.else:                                          ; preds = %for.end64
  store i32 2, ptr %lattice_rank, align 4, !tbaa !25
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc88, %if.end67
  %66 = load i32, ptr %i, align 4, !tbaa !25
  %67 = load i32, ptr %num_atom, align 4, !tbaa !25
  %cmp69 = icmp slt i32 %66, %67
  br i1 %cmp69, label %for.body70, label %for.end90

for.body70:                                       ; preds = %for.cond68
  store i32 0, ptr %k, align 4, !tbaa !25
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc85, %for.body70
  %68 = load i32, ptr %k, align 4, !tbaa !25
  %69 = load i32, ptr %lattice_rank, align 4, !tbaa !25
  %cmp72 = icmp slt i32 %68, %69
  br i1 %cmp72, label %for.body73, label %for.end87

for.body73:                                       ; preds = %for.cond71
  %70 = load ptr, ptr %bravais, align 8, !tbaa !5
  %position74 = getelementptr inbounds %struct.Cell, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %position74, align 8, !tbaa !76
  %72 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom75 = sext i32 %72 to i64
  %arrayidx76 = getelementptr inbounds [3 x double], ptr %71, i64 %idxprom75
  %73 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom77 = sext i32 %73 to i64
  %arrayidx78 = getelementptr inbounds [3 x double], ptr %arrayidx76, i64 0, i64 %idxprom77
  %74 = load double, ptr %arrayidx78, align 8, !tbaa !9
  %call79 = call double @mat_Dmod1(double noundef %74)
  %75 = load ptr, ptr %bravais, align 8, !tbaa !5
  %position80 = getelementptr inbounds %struct.Cell, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %position80, align 8, !tbaa !76
  %77 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom81 = sext i32 %77 to i64
  %arrayidx82 = getelementptr inbounds [3 x double], ptr %76, i64 %idxprom81
  %78 = load i32, ptr %k, align 4, !tbaa !25
  %idxprom83 = sext i32 %78 to i64
  %arrayidx84 = getelementptr inbounds [3 x double], ptr %arrayidx82, i64 0, i64 %idxprom83
  store double %call79, ptr %arrayidx84, align 8, !tbaa !9
  br label %for.inc85

for.inc85:                                        ; preds = %for.body73
  %79 = load i32, ptr %k, align 4, !tbaa !25
  %inc86 = add nsw i32 %79, 1
  store i32 %inc86, ptr %k, align 4, !tbaa !25
  br label %for.cond71, !llvm.loop !101

for.end87:                                        ; preds = %for.cond71
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %80 = load i32, ptr %i, align 4, !tbaa !25
  %inc89 = add nsw i32 %80, 1
  store i32 %inc89, ptr %i, align 4, !tbaa !25
  br label %for.cond68, !llvm.loop !102

for.end90:                                        ; preds = %for.cond68
  %81 = load ptr, ptr %bravais, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %81, i32 0, i32 2
  %82 = load ptr, ptr %lattice, align 8, !tbaa !14
  %83 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %lattice91 = getelementptr inbounds %struct.Cell, ptr %83, i32 0, i32 2
  %84 = load ptr, ptr %lattice91, align 8, !tbaa !14
  call void @mat_copy_matrix_d3(ptr noundef %82, ptr noundef %84)
  %85 = load ptr, ptr %conv_prim.addr, align 8, !tbaa !5
  %aperiodic_axis92 = getelementptr inbounds %struct.Cell, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %aperiodic_axis92, align 4, !tbaa !40
  %87 = load ptr, ptr %bravais, align 8, !tbaa !5
  %aperiodic_axis93 = getelementptr inbounds %struct.Cell, ptr %87, i32 0, i32 1
  store i32 %86, ptr %aperiodic_axis93, align 4, !tbaa !40
  %88 = load ptr, ptr %bravais, align 8, !tbaa !5
  store ptr %88, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end90, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bravais) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_atom) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lattice_rank) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %89 = load ptr, ptr %retval, align 8
  ret ptr %89
}

declare ptr @cel_alloc_cell(i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @search_equivalent_atom(i32 noundef %atom_index, ptr noundef %cell, ptr noundef %symmetry, double noundef %symprec) #0 {
entry:
  %retval = alloca i32, align 4
  %atom_index.addr = alloca i32, align 4
  %cell.addr = alloca ptr, align 8
  %symmetry.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pos_rot = alloca [3 x double], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %atom_index, ptr %atom_index.addr, align 4, !tbaa !25
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %symmetry, ptr %symmetry.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %pos_rot) #7
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !25
  %1 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %size, align 8, !tbaa !29
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x double], ptr %pos_rot, i64 0, i64 0
  %3 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %rot, align 8, !tbaa !31
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %4, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  %6 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.Cell, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %position, align 8, !tbaa !76
  %8 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %7, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [3 x double], ptr %arrayidx3, i64 0, i64 0
  call void @mat_multiply_matrix_vector_id3(ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay4)
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !25
  %cmp6 = icmp slt i32 %9, 3
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %trans, align 8, !tbaa !35
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %11, i64 %idxprom8
  %13 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  %14 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %15 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %pos_rot, i64 0, i64 %idxprom12
  %16 = load double, ptr %arrayidx13, align 8, !tbaa !9
  %add = fadd double %16, %14
  store double %add, ptr %arrayidx13, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %17 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond5, !llvm.loop !103

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc27, %for.end
  %18 = load i32, ptr %j, align 4, !tbaa !25
  %19 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %position17 = getelementptr inbounds %struct.Cell, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %position17, align 8, !tbaa !76
  %22 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %21, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [3 x double], ptr %pos_rot, i64 0, i64 0
  %23 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %types = getelementptr inbounds %struct.Cell, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %types, align 8, !tbaa !87
  %25 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %24, i64 %idxprom22
  %26 = load i32, ptr %arrayidx23, align 4, !tbaa !25
  %27 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %types24 = getelementptr inbounds %struct.Cell, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %types24, align 8, !tbaa !87
  %29 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %28, i64 %idxprom25
  %30 = load i32, ptr %arrayidx26, align 4, !tbaa !25
  %31 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %lattice, align 8, !tbaa !14
  %33 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call = call i32 @cel_is_overlap_with_same_type(ptr noundef %arraydecay20, ptr noundef %arraydecay21, i32 noundef %26, i32 noundef %30, ptr noundef %32, double noundef %33)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body16
  %34 = load i32, ptr %j, align 4, !tbaa !25
  store i32 %34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body16
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %35 = load i32, ptr %j, align 4, !tbaa !25
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !25
  br label %for.cond14, !llvm.loop !104

for.end29:                                        ; preds = %for.cond14
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %36 = load i32, ptr %i, align 4, !tbaa !25
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !105

for.end32:                                        ; preds = %for.cond
  %37 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %pos_rot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @search_layer_equivalent_atom(i32 noundef %atom_index, ptr noundef %cell, ptr noundef %symmetry, ptr noundef %periodic_axes, double noundef %symprec) #0 {
entry:
  %retval = alloca i32, align 4
  %atom_index.addr = alloca i32, align 4
  %cell.addr = alloca ptr, align 8
  %symmetry.addr = alloca ptr, align 8
  %periodic_axes.addr = alloca ptr, align 8
  %symprec.addr = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pos_rot = alloca [3 x double], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %atom_index, ptr %atom_index.addr, align 4, !tbaa !25
  store ptr %cell, ptr %cell.addr, align 8, !tbaa !5
  store ptr %symmetry, ptr %symmetry.addr, align 8, !tbaa !5
  store ptr %periodic_axes, ptr %periodic_axes.addr, align 8, !tbaa !5
  store double %symprec, ptr %symprec.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %pos_rot) #7
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !25
  %1 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.Symmetry, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %size, align 8, !tbaa !29
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [3 x double], ptr %pos_rot, i64 0, i64 0
  %3 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %rot = getelementptr inbounds %struct.Symmetry, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %rot, align 8, !tbaa !31
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], ptr %4, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [3 x [3 x i32]], ptr %arrayidx, i64 0, i64 0
  %6 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.Cell, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %position, align 8, !tbaa !76
  %8 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %7, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [3 x double], ptr %arrayidx3, i64 0, i64 0
  call void @mat_multiply_matrix_vector_id3(ptr noundef %arraydecay, ptr noundef %arraydecay1, ptr noundef %arraydecay4)
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4, !tbaa !25
  %cmp6 = icmp slt i32 %9, 3
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %symmetry.addr, align 8, !tbaa !5
  %trans = getelementptr inbounds %struct.Symmetry, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %trans, align 8, !tbaa !35
  %12 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %11, i64 %idxprom8
  %13 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %arrayidx9, i64 0, i64 %idxprom10
  %14 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %15 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %pos_rot, i64 0, i64 %idxprom12
  %16 = load double, ptr %arrayidx13, align 8, !tbaa !9
  %add = fadd double %16, %14
  store double %add, ptr %arrayidx13, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %17 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond5, !llvm.loop !106

for.end:                                          ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc27, %for.end
  %18 = load i32, ptr %j, align 4, !tbaa !25
  %19 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %position17 = getelementptr inbounds %struct.Cell, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %position17, align 8, !tbaa !76
  %22 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %21, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [3 x double], ptr %pos_rot, i64 0, i64 0
  %23 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %types = getelementptr inbounds %struct.Cell, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %types, align 8, !tbaa !87
  %25 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %24, i64 %idxprom22
  %26 = load i32, ptr %arrayidx23, align 4, !tbaa !25
  %27 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %types24 = getelementptr inbounds %struct.Cell, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %types24, align 8, !tbaa !87
  %29 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %28, i64 %idxprom25
  %30 = load i32, ptr %arrayidx26, align 4, !tbaa !25
  %31 = load ptr, ptr %cell.addr, align 8, !tbaa !5
  %lattice = getelementptr inbounds %struct.Cell, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %lattice, align 8, !tbaa !14
  %33 = load ptr, ptr %periodic_axes.addr, align 8, !tbaa !5
  %34 = load double, ptr %symprec.addr, align 8, !tbaa !9
  %call = call i32 @cel_layer_is_overlap_with_same_type(ptr noundef %arraydecay20, ptr noundef %arraydecay21, i32 noundef %26, i32 noundef %30, ptr noundef %32, ptr noundef %33, double noundef %34)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body16
  %35 = load i32, ptr %j, align 4, !tbaa !25
  store i32 %35, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body16
  br label %for.inc27

for.inc27:                                        ; preds = %if.end
  %36 = load i32, ptr %j, align 4, !tbaa !25
  %inc28 = add nsw i32 %36, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !25
  br label %for.cond14, !llvm.loop !107

for.end29:                                        ; preds = %for.cond14
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %37 = load i32, ptr %i, align 4, !tbaa !25
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !108

for.end32:                                        ; preds = %for.cond
  %38 = load i32, ptr %atom_index.addr, align 4, !tbaa !25
  store i32 %38, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %pos_rot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

declare i32 @cel_is_overlap_with_same_type(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, double noundef) #3

declare i32 @cel_layer_is_overlap_with_same_type(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, double noundef) #3

; Function Attrs: nounwind uwtable
define void @ref_free_exact_structure(ptr noundef %exstr) #0 {
entry:
  %exstr.addr = alloca ptr, align 8
  store ptr %exstr, ptr %exstr.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end35

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %symmetry = getelementptr inbounds %struct.ExactStructure, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %symmetry, align 8, !tbaa !17
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %symmetry3 = getelementptr inbounds %struct.ExactStructure, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %symmetry3, align 8, !tbaa !17
  call void @sym_free_symmetry(ptr noundef %4)
  %5 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %symmetry4 = getelementptr inbounds %struct.ExactStructure, ptr %5, i32 0, i32 1
  store ptr null, ptr %symmetry4, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %bravais = getelementptr inbounds %struct.ExactStructure, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %bravais, align 8, !tbaa !15
  %cmp5 = icmp ne ptr %7, null
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %bravais7 = getelementptr inbounds %struct.ExactStructure, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %bravais7, align 8, !tbaa !15
  call void @cel_free_cell(ptr noundef %9)
  %10 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %bravais8 = getelementptr inbounds %struct.ExactStructure, ptr %10, i32 0, i32 0
  store ptr null, ptr %bravais8, align 8, !tbaa !15
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %11 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %wyckoffs = getelementptr inbounds %struct.ExactStructure, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %wyckoffs, align 8, !tbaa !18
  %cmp10 = icmp ne ptr %12, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %wyckoffs12 = getelementptr inbounds %struct.ExactStructure, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %wyckoffs12, align 8, !tbaa !18
  call void @free(ptr noundef %14) #7
  %15 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %wyckoffs13 = getelementptr inbounds %struct.ExactStructure, ptr %15, i32 0, i32 2
  store ptr null, ptr %wyckoffs13, align 8, !tbaa !18
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %16 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %equivalent_atoms = getelementptr inbounds %struct.ExactStructure, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %equivalent_atoms, align 8, !tbaa !20
  %cmp15 = icmp ne ptr %17, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  %18 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %equivalent_atoms17 = getelementptr inbounds %struct.ExactStructure, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %equivalent_atoms17, align 8, !tbaa !20
  call void @free(ptr noundef %19) #7
  %20 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %equivalent_atoms18 = getelementptr inbounds %struct.ExactStructure, ptr %20, i32 0, i32 4
  store ptr null, ptr %equivalent_atoms18, align 8, !tbaa !20
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  %21 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %crystallographic_orbits = getelementptr inbounds %struct.ExactStructure, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %crystallographic_orbits, align 8, !tbaa !21
  %cmp20 = icmp ne ptr %22, null
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %23 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %crystallographic_orbits22 = getelementptr inbounds %struct.ExactStructure, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %crystallographic_orbits22, align 8, !tbaa !21
  call void @free(ptr noundef %24) #7
  %25 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %crystallographic_orbits23 = getelementptr inbounds %struct.ExactStructure, ptr %25, i32 0, i32 5
  store ptr null, ptr %crystallographic_orbits23, align 8, !tbaa !21
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %26 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %std_mapping_to_primitive = getelementptr inbounds %struct.ExactStructure, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %std_mapping_to_primitive, align 8, !tbaa !22
  %cmp25 = icmp ne ptr %27, null
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end24
  %28 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %std_mapping_to_primitive27 = getelementptr inbounds %struct.ExactStructure, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %std_mapping_to_primitive27, align 8, !tbaa !22
  call void @free(ptr noundef %29) #7
  %30 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %std_mapping_to_primitive28 = getelementptr inbounds %struct.ExactStructure, ptr %30, i32 0, i32 6
  store ptr null, ptr %std_mapping_to_primitive28, align 8, !tbaa !22
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24
  %31 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %site_symmetry_symbols = getelementptr inbounds %struct.ExactStructure, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %site_symmetry_symbols, align 8, !tbaa !19
  %cmp30 = icmp ne ptr %32, null
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end29
  %33 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %site_symmetry_symbols32 = getelementptr inbounds %struct.ExactStructure, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %site_symmetry_symbols32, align 8, !tbaa !19
  call void @free(ptr noundef %34) #7
  %35 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  %site_symmetry_symbols33 = getelementptr inbounds %struct.ExactStructure, ptr %35, i32 0, i32 3
  store ptr null, ptr %site_symmetry_symbols33, align 8, !tbaa !19
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29
  %36 = load ptr, ptr %exstr.addr, align 8, !tbaa !5
  call void @free(ptr noundef %36) #7
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %entry
  ret void
}

declare void @ptg_get_pointgroup(ptr sret(%struct.Pointgroup) align 4, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @mat_get_metric(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @set_tricli(ptr noundef %lattice, ptr noundef %metric) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %gamma = alloca double, align 8
  %cg = alloca double, align 8
  %cb = alloca double, align 8
  %ca = alloca double, align 8
  %sg = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cg) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ca) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %sg) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %6, i64 1
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 2
  %7 = load double, ptr %arrayidx9, align 8, !tbaa !9
  %8 = load double, ptr %b, align 8, !tbaa !9
  %div = fdiv double %7, %8
  %9 = load double, ptr %c, align 8, !tbaa !9
  %div10 = fdiv double %div, %9
  %call11 = call double @acos(double noundef %div10) #7
  store double %call11, ptr %alpha, align 8, !tbaa !9
  %10 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %10, i64 0
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %arrayidx12, i64 0, i64 2
  %11 = load double, ptr %arrayidx13, align 8, !tbaa !9
  %12 = load double, ptr %a, align 8, !tbaa !9
  %div14 = fdiv double %11, %12
  %13 = load double, ptr %c, align 8, !tbaa !9
  %div15 = fdiv double %div14, %13
  %call16 = call double @acos(double noundef %div15) #7
  store double %call16, ptr %beta, align 8, !tbaa !9
  %14 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %14, i64 0
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %arrayidx17, i64 0, i64 1
  %15 = load double, ptr %arrayidx18, align 8, !tbaa !9
  %16 = load double, ptr %a, align 8, !tbaa !9
  %div19 = fdiv double %15, %16
  %17 = load double, ptr %b, align 8, !tbaa !9
  %div20 = fdiv double %div19, %17
  %call21 = call double @acos(double noundef %div20) #7
  store double %call21, ptr %gamma, align 8, !tbaa !9
  %18 = load double, ptr %gamma, align 8, !tbaa !9
  %call22 = call double @cos(double noundef %18) #7
  store double %call22, ptr %cg, align 8, !tbaa !9
  %19 = load double, ptr %beta, align 8, !tbaa !9
  %call23 = call double @cos(double noundef %19) #7
  store double %call23, ptr %cb, align 8, !tbaa !9
  %20 = load double, ptr %alpha, align 8, !tbaa !9
  %call24 = call double @cos(double noundef %20) #7
  store double %call24, ptr %ca, align 8, !tbaa !9
  %21 = load double, ptr %gamma, align 8, !tbaa !9
  %call25 = call double @sin(double noundef %21) #7
  store double %call25, ptr %sg, align 8, !tbaa !9
  %22 = load double, ptr %a, align 8, !tbaa !9
  %23 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx26 = getelementptr inbounds [3 x double], ptr %23, i64 0
  %arrayidx27 = getelementptr inbounds [3 x double], ptr %arrayidx26, i64 0, i64 0
  store double %22, ptr %arrayidx27, align 8, !tbaa !9
  %24 = load double, ptr %b, align 8, !tbaa !9
  %25 = load double, ptr %cg, align 8, !tbaa !9
  %mul = fmul double %24, %25
  %26 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds [3 x double], ptr %26, i64 0
  %arrayidx29 = getelementptr inbounds [3 x double], ptr %arrayidx28, i64 0, i64 1
  store double %mul, ptr %arrayidx29, align 8, !tbaa !9
  %27 = load double, ptr %c, align 8, !tbaa !9
  %28 = load double, ptr %cb, align 8, !tbaa !9
  %mul30 = fmul double %27, %28
  %29 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx31 = getelementptr inbounds [3 x double], ptr %29, i64 0
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %arrayidx31, i64 0, i64 2
  store double %mul30, ptr %arrayidx32, align 8, !tbaa !9
  %30 = load double, ptr %b, align 8, !tbaa !9
  %31 = load double, ptr %sg, align 8, !tbaa !9
  %mul33 = fmul double %30, %31
  %32 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %32, i64 1
  %arrayidx35 = getelementptr inbounds [3 x double], ptr %arrayidx34, i64 0, i64 1
  store double %mul33, ptr %arrayidx35, align 8, !tbaa !9
  %33 = load double, ptr %c, align 8, !tbaa !9
  %34 = load double, ptr %ca, align 8, !tbaa !9
  %35 = load double, ptr %cb, align 8, !tbaa !9
  %36 = load double, ptr %cg, align 8, !tbaa !9
  %neg = fneg double %35
  %37 = call double @llvm.fmuladd.f64(double %neg, double %36, double %34)
  %mul37 = fmul double %33, %37
  %38 = load double, ptr %sg, align 8, !tbaa !9
  %div38 = fdiv double %mul37, %38
  %39 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx39 = getelementptr inbounds [3 x double], ptr %39, i64 1
  %arrayidx40 = getelementptr inbounds [3 x double], ptr %arrayidx39, i64 0, i64 2
  store double %div38, ptr %arrayidx40, align 8, !tbaa !9
  %40 = load double, ptr %c, align 8, !tbaa !9
  %41 = load double, ptr %ca, align 8, !tbaa !9
  %42 = load double, ptr %ca, align 8, !tbaa !9
  %neg42 = fneg double %41
  %43 = call double @llvm.fmuladd.f64(double %neg42, double %42, double 1.000000e+00)
  %44 = load double, ptr %cb, align 8, !tbaa !9
  %45 = load double, ptr %cb, align 8, !tbaa !9
  %neg44 = fneg double %44
  %46 = call double @llvm.fmuladd.f64(double %neg44, double %45, double %43)
  %47 = load double, ptr %cg, align 8, !tbaa !9
  %48 = load double, ptr %cg, align 8, !tbaa !9
  %neg46 = fneg double %47
  %49 = call double @llvm.fmuladd.f64(double %neg46, double %48, double %46)
  %50 = load double, ptr %ca, align 8, !tbaa !9
  %mul47 = fmul double 2.000000e+00, %50
  %51 = load double, ptr %cb, align 8, !tbaa !9
  %mul48 = fmul double %mul47, %51
  %52 = load double, ptr %cg, align 8, !tbaa !9
  %53 = call double @llvm.fmuladd.f64(double %mul48, double %52, double %49)
  %call50 = call double @sqrt(double noundef %53) #7
  %mul51 = fmul double %40, %call50
  %54 = load double, ptr %sg, align 8, !tbaa !9
  %div52 = fdiv double %mul51, %54
  %55 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds [3 x double], ptr %55, i64 2
  %arrayidx54 = getelementptr inbounds [3 x double], ptr %arrayidx53, i64 0, i64 2
  store double %div52, ptr %arrayidx54, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ca) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %cg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_monocli(ptr noundef %lattice, ptr noundef %metric, ptr noundef %choice) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %choice.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %angle = alloca double, align 8
  %pos_char = alloca i32, align 4
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  store ptr %choice, ptr %choice.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %angle) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos_char) #7
  %0 = load ptr, ptr %choice.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !41
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %pos_char, align 4, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %pos_char, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 0
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 0
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %3) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds [3 x double], ptr %4, i64 1
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %arrayidx4, i64 0, i64 1
  %5 = load double, ptr %arrayidx5, align 8, !tbaa !9
  %call6 = call double @sqrt(double noundef %5) #7
  store double %call6, ptr %b, align 8, !tbaa !9
  %6 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds [3 x double], ptr %6, i64 2
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %arrayidx7, i64 0, i64 2
  %7 = load double, ptr %arrayidx8, align 8, !tbaa !9
  %call9 = call double @sqrt(double noundef %7) #7
  store double %call9, ptr %c, align 8, !tbaa !9
  %8 = load ptr, ptr %choice.addr, align 8, !tbaa !5
  %9 = load i32, ptr %pos_char, align 4, !tbaa !25
  %idxprom = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %10 = load i8, ptr %arrayidx10, align 1, !tbaa !41
  %conv11 = sext i8 %10 to i32
  switch i32 %conv11, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb27
    i32 99, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end
  %11 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %11, i64 1
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %arrayidx12, i64 0, i64 2
  %12 = load double, ptr %arrayidx13, align 8, !tbaa !9
  %13 = load double, ptr %b, align 8, !tbaa !9
  %div = fdiv double %12, %13
  %14 = load double, ptr %c, align 8, !tbaa !9
  %div14 = fdiv double %div, %14
  %call15 = call double @acos(double noundef %div14) #7
  store double %call15, ptr %angle, align 8, !tbaa !9
  %15 = load double, ptr %c, align 8, !tbaa !9
  %16 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %16, i64 0
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %arrayidx16, i64 0, i64 2
  store double %15, ptr %arrayidx17, align 8, !tbaa !9
  %17 = load double, ptr %a, align 8, !tbaa !9
  %18 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %18, i64 1
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %arrayidx18, i64 0, i64 0
  store double %17, ptr %arrayidx19, align 8, !tbaa !9
  %19 = load double, ptr %b, align 8, !tbaa !9
  %20 = load double, ptr %angle, align 8, !tbaa !9
  %call20 = call double @cos(double noundef %20) #7
  %mul = fmul double %19, %call20
  %21 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds [3 x double], ptr %21, i64 0
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %arrayidx21, i64 0, i64 1
  store double %mul, ptr %arrayidx22, align 8, !tbaa !9
  %22 = load double, ptr %b, align 8, !tbaa !9
  %23 = load double, ptr %angle, align 8, !tbaa !9
  %call23 = call double @sin(double noundef %23) #7
  %mul24 = fmul double %22, %call23
  %24 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %24, i64 2
  %arrayidx26 = getelementptr inbounds [3 x double], ptr %arrayidx25, i64 0, i64 1
  store double %mul24, ptr %arrayidx26, align 8, !tbaa !9
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %25 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds [3 x double], ptr %25, i64 0
  %arrayidx29 = getelementptr inbounds [3 x double], ptr %arrayidx28, i64 0, i64 2
  %26 = load double, ptr %arrayidx29, align 8, !tbaa !9
  %27 = load double, ptr %a, align 8, !tbaa !9
  %div30 = fdiv double %26, %27
  %28 = load double, ptr %c, align 8, !tbaa !9
  %div31 = fdiv double %div30, %28
  %call32 = call double @acos(double noundef %div31) #7
  store double %call32, ptr %angle, align 8, !tbaa !9
  %29 = load double, ptr %a, align 8, !tbaa !9
  %30 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds [3 x double], ptr %30, i64 0
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %arrayidx33, i64 0, i64 0
  store double %29, ptr %arrayidx34, align 8, !tbaa !9
  %31 = load double, ptr %b, align 8, !tbaa !9
  %32 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds [3 x double], ptr %32, i64 1
  %arrayidx36 = getelementptr inbounds [3 x double], ptr %arrayidx35, i64 0, i64 1
  store double %31, ptr %arrayidx36, align 8, !tbaa !9
  %33 = load double, ptr %c, align 8, !tbaa !9
  %34 = load double, ptr %angle, align 8, !tbaa !9
  %call37 = call double @cos(double noundef %34) #7
  %mul38 = fmul double %33, %call37
  %35 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx39 = getelementptr inbounds [3 x double], ptr %35, i64 0
  %arrayidx40 = getelementptr inbounds [3 x double], ptr %arrayidx39, i64 0, i64 2
  store double %mul38, ptr %arrayidx40, align 8, !tbaa !9
  %36 = load double, ptr %c, align 8, !tbaa !9
  %37 = load double, ptr %angle, align 8, !tbaa !9
  %call41 = call double @sin(double noundef %37) #7
  %mul42 = fmul double %36, %call41
  %38 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds [3 x double], ptr %38, i64 2
  %arrayidx44 = getelementptr inbounds [3 x double], ptr %arrayidx43, i64 0, i64 2
  store double %mul42, ptr %arrayidx44, align 8, !tbaa !9
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  %39 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %39, i64 0
  %arrayidx47 = getelementptr inbounds [3 x double], ptr %arrayidx46, i64 0, i64 1
  %40 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %41 = load double, ptr %a, align 8, !tbaa !9
  %div48 = fdiv double %40, %41
  %42 = load double, ptr %b, align 8, !tbaa !9
  %div49 = fdiv double %div48, %42
  %call50 = call double @acos(double noundef %div49) #7
  store double %call50, ptr %angle, align 8, !tbaa !9
  %43 = load double, ptr %b, align 8, !tbaa !9
  %44 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds [3 x double], ptr %44, i64 0
  %arrayidx52 = getelementptr inbounds [3 x double], ptr %arrayidx51, i64 0, i64 1
  store double %43, ptr %arrayidx52, align 8, !tbaa !9
  %45 = load double, ptr %c, align 8, !tbaa !9
  %46 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds [3 x double], ptr %46, i64 1
  %arrayidx54 = getelementptr inbounds [3 x double], ptr %arrayidx53, i64 0, i64 2
  store double %45, ptr %arrayidx54, align 8, !tbaa !9
  %47 = load double, ptr %a, align 8, !tbaa !9
  %48 = load double, ptr %angle, align 8, !tbaa !9
  %call55 = call double @cos(double noundef %48) #7
  %mul56 = fmul double %47, %call55
  %49 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds [3 x double], ptr %49, i64 0
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %arrayidx57, i64 0, i64 0
  store double %mul56, ptr %arrayidx58, align 8, !tbaa !9
  %50 = load double, ptr %a, align 8, !tbaa !9
  %51 = load double, ptr %angle, align 8, !tbaa !9
  %call59 = call double @sin(double noundef %51) #7
  %mul60 = fmul double %50, %call59
  %52 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx61 = getelementptr inbounds [3 x double], ptr %52, i64 2
  %arrayidx62 = getelementptr inbounds [3 x double], ptr %arrayidx61, i64 0, i64 0
  store double %mul60, ptr %arrayidx62, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb45, %sw.bb27, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos_char) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %angle) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_layer_monocli(ptr noundef %lattice, ptr noundef %metric, ptr noundef %choice) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %choice.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %angle = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  store ptr %choice, ptr %choice.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %angle) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load ptr, ptr %choice.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx8, align 1, !tbaa !41
  %conv = sext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb24
    i32 99, label %sw.bb42
  ]

sw.bb:                                            ; preds = %entry
  %8 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %8, i64 1
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %arrayidx9, i64 0, i64 2
  %9 = load double, ptr %arrayidx10, align 8, !tbaa !9
  %10 = load double, ptr %b, align 8, !tbaa !9
  %div = fdiv double %9, %10
  %11 = load double, ptr %c, align 8, !tbaa !9
  %div11 = fdiv double %div, %11
  %call12 = call double @acos(double noundef %div11) #7
  store double %call12, ptr %angle, align 8, !tbaa !9
  %12 = load double, ptr %a, align 8, !tbaa !9
  %13 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %13, i64 0
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %arrayidx13, i64 0, i64 0
  store double %12, ptr %arrayidx14, align 8, !tbaa !9
  %14 = load double, ptr %b, align 8, !tbaa !9
  %15 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %15, i64 1
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %arrayidx15, i64 0, i64 1
  store double %14, ptr %arrayidx16, align 8, !tbaa !9
  %16 = load double, ptr %c, align 8, !tbaa !9
  %17 = load double, ptr %angle, align 8, !tbaa !9
  %call17 = call double @cos(double noundef %17) #7
  %mul = fmul double %16, %call17
  %18 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %18, i64 1
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %arrayidx18, i64 0, i64 2
  store double %mul, ptr %arrayidx19, align 8, !tbaa !9
  %19 = load double, ptr %c, align 8, !tbaa !9
  %20 = load double, ptr %angle, align 8, !tbaa !9
  %call20 = call double @sin(double noundef %20) #7
  %mul21 = fmul double %19, %call20
  %21 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds [3 x double], ptr %21, i64 2
  %arrayidx23 = getelementptr inbounds [3 x double], ptr %arrayidx22, i64 0, i64 2
  store double %mul21, ptr %arrayidx23, align 8, !tbaa !9
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %22 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %22, i64 0
  %arrayidx26 = getelementptr inbounds [3 x double], ptr %arrayidx25, i64 0, i64 2
  %23 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %24 = load double, ptr %a, align 8, !tbaa !9
  %div27 = fdiv double %23, %24
  %25 = load double, ptr %c, align 8, !tbaa !9
  %div28 = fdiv double %div27, %25
  %call29 = call double @acos(double noundef %div28) #7
  store double %call29, ptr %angle, align 8, !tbaa !9
  %26 = load double, ptr %b, align 8, !tbaa !9
  %27 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds [3 x double], ptr %27, i64 0
  %arrayidx31 = getelementptr inbounds [3 x double], ptr %arrayidx30, i64 0, i64 0
  store double %26, ptr %arrayidx31, align 8, !tbaa !9
  %28 = load double, ptr %a, align 8, !tbaa !9
  %29 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %29, i64 1
  %arrayidx33 = getelementptr inbounds [3 x double], ptr %arrayidx32, i64 0, i64 1
  store double %28, ptr %arrayidx33, align 8, !tbaa !9
  %30 = load double, ptr %c, align 8, !tbaa !9
  %31 = load double, ptr %angle, align 8, !tbaa !9
  %call34 = call double @cos(double noundef %31) #7
  %mul35 = fmul double %30, %call34
  %32 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx36 = getelementptr inbounds [3 x double], ptr %32, i64 0
  %arrayidx37 = getelementptr inbounds [3 x double], ptr %arrayidx36, i64 0, i64 2
  store double %mul35, ptr %arrayidx37, align 8, !tbaa !9
  %33 = load double, ptr %c, align 8, !tbaa !9
  %34 = load double, ptr %angle, align 8, !tbaa !9
  %call38 = call double @sin(double noundef %34) #7
  %mul39 = fmul double %33, %call38
  %35 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds [3 x double], ptr %35, i64 2
  %arrayidx41 = getelementptr inbounds [3 x double], ptr %arrayidx40, i64 0, i64 2
  store double %mul39, ptr %arrayidx41, align 8, !tbaa !9
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %36 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds [3 x double], ptr %36, i64 0
  %arrayidx44 = getelementptr inbounds [3 x double], ptr %arrayidx43, i64 0, i64 1
  %37 = load double, ptr %arrayidx44, align 8, !tbaa !9
  %38 = load double, ptr %a, align 8, !tbaa !9
  %div45 = fdiv double %37, %38
  %39 = load double, ptr %b, align 8, !tbaa !9
  %div46 = fdiv double %div45, %39
  %call47 = call double @acos(double noundef %div46) #7
  store double %call47, ptr %angle, align 8, !tbaa !9
  %40 = load double, ptr %a, align 8, !tbaa !9
  %41 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds [3 x double], ptr %41, i64 0
  %arrayidx49 = getelementptr inbounds [3 x double], ptr %arrayidx48, i64 0, i64 0
  store double %40, ptr %arrayidx49, align 8, !tbaa !9
  %42 = load double, ptr %b, align 8, !tbaa !9
  %43 = load double, ptr %angle, align 8, !tbaa !9
  %call50 = call double @cos(double noundef %43) #7
  %mul51 = fmul double %42, %call50
  %44 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds [3 x double], ptr %44, i64 0
  %arrayidx53 = getelementptr inbounds [3 x double], ptr %arrayidx52, i64 0, i64 1
  store double %mul51, ptr %arrayidx53, align 8, !tbaa !9
  %45 = load double, ptr %b, align 8, !tbaa !9
  %46 = load double, ptr %angle, align 8, !tbaa !9
  %call54 = call double @sin(double noundef %46) #7
  %mul55 = fmul double %45, %call54
  %47 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds [3 x double], ptr %47, i64 1
  %arrayidx57 = getelementptr inbounds [3 x double], ptr %arrayidx56, i64 0, i64 1
  store double %mul55, ptr %arrayidx57, align 8, !tbaa !9
  %48 = load double, ptr %c, align 8, !tbaa !9
  %49 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %49, i64 2
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %arrayidx58, i64 0, i64 2
  store double %48, ptr %arrayidx59, align 8, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %50 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb42, %sw.bb24, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %angle) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_ortho(ptr noundef %lattice, ptr noundef %metric) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load double, ptr %a, align 8, !tbaa !9
  %7 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %7, i64 0
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 0
  store double %6, ptr %arrayidx9, align 8, !tbaa !9
  %8 = load double, ptr %b, align 8, !tbaa !9
  %9 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %9, i64 1
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %arrayidx10, i64 0, i64 1
  store double %8, ptr %arrayidx11, align 8, !tbaa !9
  %10 = load double, ptr %c, align 8, !tbaa !9
  %11 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %11, i64 2
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %arrayidx12, i64 0, i64 2
  store double %10, ptr %arrayidx13, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_tetra(ptr noundef %lattice, ptr noundef %metric) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load double, ptr %a, align 8, !tbaa !9
  %7 = load double, ptr %b, align 8, !tbaa !9
  %add = fadd double %6, %7
  %div = fdiv double %add, 2.000000e+00
  %8 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %8, i64 0
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 0
  store double %div, ptr %arrayidx9, align 8, !tbaa !9
  %9 = load double, ptr %a, align 8, !tbaa !9
  %10 = load double, ptr %b, align 8, !tbaa !9
  %add10 = fadd double %9, %10
  %div11 = fdiv double %add10, 2.000000e+00
  %11 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %11, i64 1
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %arrayidx12, i64 0, i64 1
  store double %div11, ptr %arrayidx13, align 8, !tbaa !9
  %12 = load double, ptr %c, align 8, !tbaa !9
  %13 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %13, i64 2
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %arrayidx14, i64 0, i64 2
  store double %12, ptr %arrayidx15, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_rhomb(ptr noundef %lattice, ptr noundef %metric) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %angle = alloca double, align 8
  %ahex = alloca double, align 8
  %chex = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %angle) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ahex) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %chex) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %6, i64 0
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 1
  %7 = load double, ptr %arrayidx9, align 8, !tbaa !9
  %8 = load double, ptr %a, align 8, !tbaa !9
  %div = fdiv double %7, %8
  %9 = load double, ptr %b, align 8, !tbaa !9
  %div10 = fdiv double %div, %9
  %10 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds [3 x double], ptr %10, i64 0
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %arrayidx11, i64 0, i64 2
  %11 = load double, ptr %arrayidx12, align 8, !tbaa !9
  %12 = load double, ptr %a, align 8, !tbaa !9
  %div13 = fdiv double %11, %12
  %13 = load double, ptr %c, align 8, !tbaa !9
  %div14 = fdiv double %div13, %13
  %add = fadd double %div10, %div14
  %14 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %14, i64 1
  %arrayidx16 = getelementptr inbounds [3 x double], ptr %arrayidx15, i64 0, i64 2
  %15 = load double, ptr %arrayidx16, align 8, !tbaa !9
  %16 = load double, ptr %b, align 8, !tbaa !9
  %div17 = fdiv double %15, %16
  %17 = load double, ptr %c, align 8, !tbaa !9
  %div18 = fdiv double %div17, %17
  %add19 = fadd double %add, %div18
  %div20 = fdiv double %add19, 3.000000e+00
  %call21 = call double @acos(double noundef %div20) #7
  store double %call21, ptr %angle, align 8, !tbaa !9
  %18 = load double, ptr %a, align 8, !tbaa !9
  %19 = load double, ptr %b, align 8, !tbaa !9
  %add22 = fadd double %18, %19
  %20 = load double, ptr %c, align 8, !tbaa !9
  %add23 = fadd double %add22, %20
  %mul = fmul double 2.000000e+00, %add23
  %div24 = fdiv double %mul, 3.000000e+00
  %21 = load double, ptr %angle, align 8, !tbaa !9
  %div25 = fdiv double %21, 2.000000e+00
  %call26 = call double @sin(double noundef %div25) #7
  %mul27 = fmul double %div24, %call26
  store double %mul27, ptr %ahex, align 8, !tbaa !9
  %22 = load double, ptr %a, align 8, !tbaa !9
  %23 = load double, ptr %b, align 8, !tbaa !9
  %add28 = fadd double %22, %23
  %24 = load double, ptr %c, align 8, !tbaa !9
  %add29 = fadd double %add28, %24
  %div30 = fdiv double %add29, 3.000000e+00
  %25 = load double, ptr %angle, align 8, !tbaa !9
  %call31 = call double @cos(double noundef %25) #7
  %26 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call31, double 1.000000e+00)
  %mul33 = fmul double 3.000000e+00, %26
  %call34 = call double @sqrt(double noundef %mul33) #7
  %mul35 = fmul double %div30, %call34
  store double %mul35, ptr %chex, align 8, !tbaa !9
  %27 = load double, ptr %ahex, align 8, !tbaa !9
  %div36 = fdiv double %27, 2.000000e+00
  %28 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds [3 x double], ptr %28, i64 0
  %arrayidx38 = getelementptr inbounds [3 x double], ptr %arrayidx37, i64 0, i64 0
  store double %div36, ptr %arrayidx38, align 8, !tbaa !9
  %29 = load double, ptr %ahex, align 8, !tbaa !9
  %call39 = call double @sqrt(double noundef 3.000000e+00) #7
  %mul40 = fmul double 2.000000e+00, %call39
  %div41 = fdiv double %29, %mul40
  %30 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds [3 x double], ptr %30, i64 1
  %arrayidx43 = getelementptr inbounds [3 x double], ptr %arrayidx42, i64 0, i64 0
  store double %div41, ptr %arrayidx43, align 8, !tbaa !9
  %31 = load double, ptr %chex, align 8, !tbaa !9
  %div44 = fdiv double %31, 3.000000e+00
  %32 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds [3 x double], ptr %32, i64 2
  %arrayidx46 = getelementptr inbounds [3 x double], ptr %arrayidx45, i64 0, i64 0
  store double %div44, ptr %arrayidx46, align 8, !tbaa !9
  %33 = load double, ptr %ahex, align 8, !tbaa !9
  %fneg = fneg double %33
  %div47 = fdiv double %fneg, 2.000000e+00
  %34 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds [3 x double], ptr %34, i64 0
  %arrayidx49 = getelementptr inbounds [3 x double], ptr %arrayidx48, i64 0, i64 1
  store double %div47, ptr %arrayidx49, align 8, !tbaa !9
  %35 = load double, ptr %ahex, align 8, !tbaa !9
  %call50 = call double @sqrt(double noundef 3.000000e+00) #7
  %mul51 = fmul double 2.000000e+00, %call50
  %div52 = fdiv double %35, %mul51
  %36 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds [3 x double], ptr %36, i64 1
  %arrayidx54 = getelementptr inbounds [3 x double], ptr %arrayidx53, i64 0, i64 1
  store double %div52, ptr %arrayidx54, align 8, !tbaa !9
  %37 = load double, ptr %chex, align 8, !tbaa !9
  %div55 = fdiv double %37, 3.000000e+00
  %38 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx56 = getelementptr inbounds [3 x double], ptr %38, i64 2
  %arrayidx57 = getelementptr inbounds [3 x double], ptr %arrayidx56, i64 0, i64 1
  store double %div55, ptr %arrayidx57, align 8, !tbaa !9
  %39 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds [3 x double], ptr %39, i64 0
  %arrayidx59 = getelementptr inbounds [3 x double], ptr %arrayidx58, i64 0, i64 2
  store double 0.000000e+00, ptr %arrayidx59, align 8, !tbaa !9
  %40 = load double, ptr %ahex, align 8, !tbaa !9
  %fneg60 = fneg double %40
  %call61 = call double @sqrt(double noundef 3.000000e+00) #7
  %div62 = fdiv double %fneg60, %call61
  %41 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx63 = getelementptr inbounds [3 x double], ptr %41, i64 1
  %arrayidx64 = getelementptr inbounds [3 x double], ptr %arrayidx63, i64 0, i64 2
  store double %div62, ptr %arrayidx64, align 8, !tbaa !9
  %42 = load double, ptr %chex, align 8, !tbaa !9
  %div65 = fdiv double %42, 3.000000e+00
  %43 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx66 = getelementptr inbounds [3 x double], ptr %43, i64 2
  %arrayidx67 = getelementptr inbounds [3 x double], ptr %arrayidx66, i64 0, i64 2
  store double %div65, ptr %arrayidx67, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %chex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ahex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %angle) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_trigo(ptr noundef %lattice, ptr noundef %metric) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load double, ptr %a, align 8, !tbaa !9
  %7 = load double, ptr %b, align 8, !tbaa !9
  %add = fadd double %6, %7
  %div = fdiv double %add, 2.000000e+00
  %8 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds [3 x double], ptr %8, i64 0
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 0
  store double %div, ptr %arrayidx9, align 8, !tbaa !9
  %9 = load double, ptr %a, align 8, !tbaa !9
  %10 = load double, ptr %b, align 8, !tbaa !9
  %add10 = fadd double %9, %10
  %fneg = fneg double %add10
  %div11 = fdiv double %fneg, 4.000000e+00
  %11 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds [3 x double], ptr %11, i64 0
  %arrayidx13 = getelementptr inbounds [3 x double], ptr %arrayidx12, i64 0, i64 1
  store double %div11, ptr %arrayidx13, align 8, !tbaa !9
  %12 = load double, ptr %a, align 8, !tbaa !9
  %13 = load double, ptr %b, align 8, !tbaa !9
  %add14 = fadd double %12, %13
  %div15 = fdiv double %add14, 4.000000e+00
  %call16 = call double @sqrt(double noundef 3.000000e+00) #7
  %mul = fmul double %div15, %call16
  %14 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds [3 x double], ptr %14, i64 1
  %arrayidx18 = getelementptr inbounds [3 x double], ptr %arrayidx17, i64 0, i64 1
  store double %mul, ptr %arrayidx18, align 8, !tbaa !9
  %15 = load double, ptr %c, align 8, !tbaa !9
  %16 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %16, i64 2
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 2
  store double %15, ptr %arrayidx20, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_cubic(ptr noundef %lattice, ptr noundef %metric) #0 {
entry:
  %lattice.addr = alloca ptr, align 8
  %metric.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  store ptr %metric, ptr %metric.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #7
  %0 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x double], ptr %0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !9
  %call = call double @sqrt(double noundef %1) #7
  store double %call, ptr %a, align 8, !tbaa !9
  %2 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %call4 = call double @sqrt(double noundef %3) #7
  store double %call4, ptr %b, align 8, !tbaa !9
  %4 = load ptr, ptr %metric.addr, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds [3 x double], ptr %4, i64 2
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %arrayidx5, i64 0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call double @sqrt(double noundef %5) #7
  store double %call7, ptr %c, align 8, !tbaa !9
  %6 = load double, ptr %a, align 8, !tbaa !9
  %7 = load double, ptr %b, align 8, !tbaa !9
  %add = fadd double %6, %7
  %8 = load double, ptr %c, align 8, !tbaa !9
  %add8 = fadd double %add, %8
  %div = fdiv double %add8, 3.000000e+00
  %9 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds [3 x double], ptr %9, i64 0
  %arrayidx10 = getelementptr inbounds [3 x double], ptr %arrayidx9, i64 0, i64 0
  store double %div, ptr %arrayidx10, align 8, !tbaa !9
  %10 = load double, ptr %a, align 8, !tbaa !9
  %11 = load double, ptr %b, align 8, !tbaa !9
  %add11 = fadd double %10, %11
  %12 = load double, ptr %c, align 8, !tbaa !9
  %add12 = fadd double %add11, %12
  %div13 = fdiv double %add12, 3.000000e+00
  %13 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds [3 x double], ptr %13, i64 1
  %arrayidx15 = getelementptr inbounds [3 x double], ptr %arrayidx14, i64 0, i64 1
  store double %div13, ptr %arrayidx15, align 8, !tbaa !9
  %14 = load double, ptr %a, align 8, !tbaa !9
  %15 = load double, ptr %b, align 8, !tbaa !9
  %add16 = fadd double %14, %15
  %16 = load double, ptr %c, align 8, !tbaa !9
  %add17 = fadd double %add16, %16
  %div18 = fdiv double %add17, 3.000000e+00
  %17 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds [3 x double], ptr %17, i64 2
  %arrayidx20 = getelementptr inbounds [3 x double], ptr %arrayidx19, i64 0, i64 2
  store double %div18, ptr %arrayidx20, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #7
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nounwind
declare double @acos(double noundef) #4

; Function Attrs: nounwind
declare double @cos(double noundef) #4

; Function Attrs: nounwind
declare double @sin(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @mat_get_determinant_i3(ptr noundef) #3

declare i32 @mat_Nint(double noundef) #3

declare double @mat_norm_squared_d3(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @get_orthonormal_basis(ptr noundef %basis, ptr noundef %lattice) #0 {
entry:
  %basis.addr = alloca ptr, align 8
  %lattice.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %length = alloca double, align 8
  %basis_T = alloca [3 x [3 x double]], align 16
  %lattice_T = alloca [3 x [3 x double]], align 16
  store ptr %basis, ptr %basis.addr, align 8, !tbaa !5
  store ptr %lattice, ptr %lattice.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %basis_T) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr %lattice_T) #7
  %arraydecay = getelementptr inbounds [3 x [3 x double]], ptr %lattice_T, i64 0, i64 0
  %0 = load ptr, ptr %lattice.addr, align 8, !tbaa !5
  call void @mat_transpose_matrix_d3(ptr noundef %arraydecay, ptr noundef %0)
  %arrayidx = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [3 x double], ptr %arrayidx, i64 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x [3 x double]], ptr %lattice_T, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [3 x double], ptr %arrayidx2, i64 0, i64 0
  call void @mat_copy_vector_d3(ptr noundef %arraydecay1, ptr noundef %arraydecay3)
  %arrayidx4 = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 2
  %arraydecay5 = getelementptr inbounds [3 x double], ptr %arrayidx4, i64 0, i64 0
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], ptr %lattice_T, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [3 x double], ptr %arrayidx6, i64 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x [3 x double]], ptr %lattice_T, i64 0, i64 1
  %arraydecay9 = getelementptr inbounds [3 x double], ptr %arrayidx8, i64 0, i64 0
  call void @mat_cross_product_d3(ptr noundef %arraydecay5, ptr noundef %arraydecay7, ptr noundef %arraydecay9)
  %arrayidx10 = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 1
  %arraydecay11 = getelementptr inbounds [3 x double], ptr %arrayidx10, i64 0, i64 0
  %arrayidx12 = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 2
  %arraydecay13 = getelementptr inbounds [3 x double], ptr %arrayidx12, i64 0, i64 0
  %arrayidx14 = getelementptr inbounds [3 x [3 x double]], ptr %lattice_T, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [3 x double], ptr %arrayidx14, i64 0, i64 0
  call void @mat_cross_product_d3(ptr noundef %arraydecay11, ptr noundef %arraydecay13, ptr noundef %arraydecay15)
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !25
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom = sext i32 %2 to i64
  %arrayidx16 = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 %idxprom
  %arraydecay17 = getelementptr inbounds [3 x double], ptr %arrayidx16, i64 0, i64 0
  %call = call double @mat_norm_squared_d3(ptr noundef %arraydecay17)
  %call18 = call double @sqrt(double noundef %call) #7
  store double %call18, ptr %length, align 8, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !25
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !25
  %cmp20 = icmp slt i32 %3, 3
  br i1 %cmp20, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond19
  %4 = load double, ptr %length, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !25
  %idxprom22 = sext i32 %5 to i64
  %arrayidx23 = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 %idxprom22
  %6 = load i32, ptr %j, align 4, !tbaa !25
  %idxprom24 = sext i32 %6 to i64
  %arrayidx25 = getelementptr inbounds [3 x double], ptr %arrayidx23, i64 0, i64 %idxprom24
  %7 = load double, ptr %arrayidx25, align 8, !tbaa !9
  %div = fdiv double %7, %4
  store double %div, ptr %arrayidx25, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %8 = load i32, ptr %j, align 4, !tbaa !25
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !25
  br label %for.cond19, !llvm.loop !109

for.end:                                          ; preds = %for.cond19
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !25
  %inc27 = add nsw i32 %9, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !110

for.end28:                                        ; preds = %for.cond
  %10 = load ptr, ptr %basis.addr, align 8, !tbaa !5
  %arraydecay29 = getelementptr inbounds [3 x [3 x double]], ptr %basis_T, i64 0, i64 0
  call void @mat_transpose_matrix_d3(ptr noundef %10, ptr noundef %arraydecay29)
  call void @llvm.lifetime.end.p0(i64 72, ptr %lattice_T) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr %basis_T) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

declare void @mat_transpose_matrix_d3(ptr noundef, ptr noundef) #3

declare void @mat_cross_product_d3(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 40}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !6, i64 8}
!15 = !{!16, !6, i64 0}
!16 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56}
!17 = !{!16, !6, i64 8}
!18 = !{!16, !6, i64 16}
!19 = !{!16, !6, i64 24}
!20 = !{!16, !6, i64 32}
!21 = !{!16, !6, i64 40}
!22 = !{!16, !6, i64 48}
!23 = !{!24, !13, i64 4}
!24 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !7, i64 12, !7, i64 19, !7, i64 36, !7, i64 68, !7, i64 88, !7, i64 99, !7, i64 112, !7, i64 184}
!25 = !{!13, !13, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = !{!30, !13, i64 0}
!30 = !{!"", !13, i64 0, !6, i64 8, !6, i64 16}
!31 = !{!30, !6, i64 8}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
!35 = !{!30, !6, i64 16}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = !{!12, !13, i64 4}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = !{!49, !6, i64 8}
!49 = !{!"", !13, i64 0, !6, i64 8}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27}
!53 = !{!49, !13, i64 0}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !27}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, !27}
!70 = distinct !{!70, !27}
!71 = distinct !{!71, !27}
!72 = distinct !{!72, !27}
!73 = distinct !{!73, !27}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !27}
!76 = !{!12, !6, i64 24}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = distinct !{!85, !27}
!86 = !{!12, !7, i64 32}
!87 = !{!12, !6, i64 16}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !27}
!91 = !{!24, !13, i64 8}
!92 = !{i64 0, i64 4, !25, i64 4, i64 6, !41, i64 10, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 4, !41}
!93 = distinct !{!93, !27}
!94 = distinct !{!94, !27}
!95 = !{!96, !7, i64 16}
!96 = !{!"", !13, i64 0, !7, i64 4, !7, i64 10, !7, i64 16, !7, i64 20}
!97 = distinct !{!97, !27}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !27}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !27}
!103 = distinct !{!103, !27}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !27}
!106 = distinct !{!106, !27}
!107 = distinct !{!107, !27}
!108 = distinct !{!108, !27}
!109 = distinct !{!109, !27}
!110 = distinct !{!110, !27}
