; ModuleID = 'ClangNoteBook/Chapter10/example-10.5.c'
source_filename = "ClangNoteBook/Chapter10/example-10.5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"data4.csv\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\E3\82\AA\E3\83\BC\E3\83\97\E3\83\B3\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\9B\E3\82\93\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"x=sin(3*t) y=sin(4*t)\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%f,%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.__sFILE*, align 8
  store i32 0, i32* %1, align 4
  %8 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct.__sFILE* %8, %struct.__sFILE** %7, align 8
  %9 = icmp eq %struct.__sFILE* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %42

; <label>:12:                                     ; preds = %0
  %13 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %14 = call i32 @"\01_fputs"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), %struct.__sFILE* %13)
  store double 0x3FAACEE9F2F85A9B, double* %6, align 8
  store i32 0, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %36, %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp sle i32 %16, 120
  br i1 %17, label %18, label %39

; <label>:18:                                     ; preds = %15
  %19 = load double, double* %6, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sitofp i32 %20 to double
  %22 = fmul double %19, %21
  store double %22, double* %5, align 8
  %23 = load double, double* %5, align 8
  %24 = fmul double 3.000000e+00, %23
  %25 = call double @llvm.sin.f64(double %24)
  store double %25, double* %3, align 8
  %26 = load double, double* %5, align 8
  %27 = fmul double 4.000000e+00, %26
  %28 = call double @llvm.sin.f64(double %27)
  store double %28, double* %4, align 8
  %29 = load double, double* %3, align 8
  %30 = load double, double* %4, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %29, double %30)
  %32 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %33 = load double, double* %3, align 8
  %34 = load double, double* %4, align 8
  %35 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %33, double %34)
  br label %36

; <label>:36:                                     ; preds = %18
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %15

; <label>:39:                                     ; preds = %15
  %40 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8
  %41 = call i32 @fclose(%struct.__sFILE* %40)
  store i32 0, i32* %1, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %10
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sin.f64(double) #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

declare i32 @fclose(%struct.__sFILE*) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
