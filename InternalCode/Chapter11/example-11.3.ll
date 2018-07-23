; ModuleID = 'ClangNoteBook/Chapter11/example-11.3.c'
source_filename = "ClangNoteBook/Chapter11/example-11.3.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.vector = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"(%.2f,%.2f)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vector, align 8
  %3 = alloca %struct.vector, align 8
  %4 = alloca %struct.vector, align 8
  %5 = alloca %struct.vector, align 8
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 0
  store double 2.200000e+00, double* %6, align 8
  %7 = getelementptr inbounds %struct.vector, %struct.vector* %2, i32 0, i32 1
  store double 3.500000e+00, double* %7, align 8
  %8 = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 0
  store double -2.800000e+00, double* %8, align 8
  %9 = getelementptr inbounds %struct.vector, %struct.vector* %3, i32 0, i32 1
  store double 4.500000e+00, double* %9, align 8
  %10 = bitcast %struct.vector* %2 to { double, double }*
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = bitcast %struct.vector* %3 to { double, double }*
  %16 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 1
  %19 = load double, double* %18, align 8
  %20 = call { double, double } @add(double %12, double %14, double %17, double %19)
  %21 = bitcast %struct.vector* %5 to { double, double }*
  %22 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 0
  %23 = extractvalue { double, double } %20, 0
  store double %23, double* %22, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 1
  %25 = extractvalue { double, double } %20, 1
  store double %25, double* %24, align 8
  %26 = bitcast %struct.vector* %4 to i8*
  %27 = bitcast %struct.vector* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 16, i32 8, i1 false)
  %28 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), double %29, double %31)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define { double, double } @add(double, double, double, double) #0 {
  %5 = alloca %struct.vector, align 8
  %6 = alloca %struct.vector, align 8
  %7 = alloca %struct.vector, align 8
  %8 = alloca %struct.vector, align 8
  %9 = bitcast %struct.vector* %6 to { double, double }*
  %10 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 0
  store double %0, double* %10, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %9, i32 0, i32 1
  store double %1, double* %11, align 8
  %12 = bitcast %struct.vector* %7 to { double, double }*
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  store double %2, double* %13, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %3, double* %14, align 8
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fadd double %16, %18
  %20 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 0
  store double %19, double* %20, align 8
  %21 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fadd double %22, %24
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 1
  store double %25, double* %26, align 8
  %27 = bitcast %struct.vector* %5 to i8*
  %28 = bitcast %struct.vector* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 16, i32 8, i1 false)
  %29 = bitcast %struct.vector* %5 to { double, double }*
  %30 = load { double, double }, { double, double }* %29, align 8
  ret { double, double } %30
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
