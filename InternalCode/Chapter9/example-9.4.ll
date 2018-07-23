; ModuleID = 'ClangNoteBook/Chapter9/example-9.4.c'
source_filename = "ClangNoteBook/Chapter9/example-9.4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [14 x i8] c"\E5\90\88\E8\A8\88=%7.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca [4 x double], align 16
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  store double 2.400000e+00, double* %4, align 16
  %5 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 1
  store double 3.800000e+00, double* %5, align 8
  %6 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 2
  store double 6.200000e+00, double* %6, align 16
  %7 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 3
  store double 4.900000e+00, double* %7, align 8
  %8 = getelementptr inbounds [4 x double], [4 x double]* %3, i32 0, i32 0
  %9 = call double @sum(double* %8)
  store double %9, double* %2, align 8
  %10 = load double, double* %2, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), double %10)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @sum(double*) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store double* %0, double** %2, align 8
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %16, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 3
  br i1 %7, label %8, label %19

; <label>:8:                                      ; preds = %5
  %9 = load double*, double** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, double* %9, i64 %11
  %13 = load double, double* %12, align 8
  %14 = load double, double* %4, align 8
  %15 = fadd double %14, %13
  store double %15, double* %4, align 8
  br label %16

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %5

; <label>:19:                                     ; preds = %5
  %20 = load double, double* %4, align 8
  ret double %20
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
