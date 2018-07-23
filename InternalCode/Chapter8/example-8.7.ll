; ModuleID = 'ClangNoteBook/Chapter8/example-8.7.c'
source_filename = "ClangNoteBook/Chapter8/example-8.7.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [32 x i8] c"\E9\87\8D\E3\81\95\E3\82\92\E5\85\A5\E3\82\8C\E3\81\A6\E3\81\8F\E3\81\A0\E3\81\95\E3\81\84 \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\E3\82\A8\E3\83\A9\E3\83\BC\E3\81\A7\E3\81\99\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%d \E5\86\86\E3\81\A7\E3\81\99\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  %5 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %2)
  %6 = load double, double* %2, align 8
  %7 = call i32 @post(double %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %15

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 %13)
  br label %15

; <label>:15:                                     ; preds = %12, %10
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @post(double) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fcmp ole double %5, 0.000000e+00
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp ogt double %8, 2.000000e+01
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %32

; <label>:11:                                     ; preds = %7
  %12 = load double, double* %3, align 8
  %13 = call double @llvm.ceil.f64(double %12)
  %14 = fptosi double %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load double, double* %3, align 8
  %16 = fcmp ole double %15, 5.000000e+00
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 600, %18
  %20 = add nsw i32 %19, 1200
  store i32 %20, i32* %2, align 4
  br label %32

; <label>:21:                                     ; preds = %11
  %22 = load double, double* %3, align 8
  %23 = fcmp ole double %22, 1.000000e+01
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 500, %25
  %27 = add nsw i32 %26, 1700
  store i32 %27, i32* %2, align 4
  br label %32

; <label>:28:                                     ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 300, %29
  %31 = add nsw i32 %30, 3700
  store i32 %31, i32* %2, align 4
  br label %32

; <label>:32:                                     ; preds = %28, %24, %17, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.ceil.f64(double) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
