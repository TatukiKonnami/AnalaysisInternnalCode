; ModuleID = 'ClangNoteBook/Chapter12/example-12.1.c'
source_filename = "ClangNoteBook/Chapter12/example-12.1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [30 x i8] c"1/1-1/2+1/3- ... 1/%d=%10.7f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 0.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store i32 1, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %15, %0
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 50
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double 1.000000e+00, %11
  %13 = load double, double* %3, align 8
  %14 = fadd double %13, %12
  store double %14, double* %3, align 8
  br label %15

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %5, align 4
  br label %6

; <label>:18:                                     ; preds = %6
  store i32 2, i32* %5, align 4
  br label %19

; <label>:19:                                     ; preds = %28, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %20, 50
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double 1.000000e+00, %24
  %26 = load double, double* %4, align 8
  %27 = fadd double %26, %25
  store double %27, double* %4, align 8
  br label %28

; <label>:28:                                     ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %5, align 4
  br label %19

; <label>:31:                                     ; preds = %19
  %32 = load double, double* %3, align 8
  %33 = load double, double* %4, align 8
  %34 = fsub double %32, %33
  store double %34, double* %2, align 8
  %35 = load double, double* %2, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 50, double %35)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
