; ModuleID = 'ClangNoteBook/Chapter6/example-6.2.c'
source_filename = "ClangNoteBook/Chapter6/example-6.2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@main.x = private unnamed_addr constant [7 x double] [double 4.860000e+01, double 4.150000e+01, double 2.320000e+01, double 1.890000e+01, double 9.290000e+01, double 5.700000e+01, double 3.040000e+01], align 16
@.str = private unnamed_addr constant [19 x i8] c" \E3\83\87\E3\83\BC\E3\82\BF \E5\81\8F\E5\B7\AE\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%8.2f%8.2f\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\E3\83\87\E3\83\BC\E3\82\BF\E6\95\B0=%2d \E5\B9\B3\E5\9D\87=%8.3f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x double], align 16
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = bitcast [7 x double]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* bitcast ([7 x double]* @main.x to i8*), i64 56, i32 16, i1 false)
  store i32 7, i32* %7, align 4
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

; <label>:9:                                      ; preds = %20, %0
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double, double* %4, align 8
  %19 = fadd double %18, %17
  store double %19, double* %4, align 8
  br label %20

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %9

; <label>:23:                                     ; preds = %9
  %24 = load double, double* %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %24, %26
  store double %27, double* %5, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %6, align 4
  br label %29

; <label>:29:                                     ; preds = %46, %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %49

; <label>:33:                                     ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double, double* %5, align 8
  %39 = fsub double %37, %38
  store double %39, double* %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [7 x double], [7 x double]* %2, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load double, double* %3, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), double %43, double %44)
  br label %46

; <label>:46:                                     ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %29

; <label>:49:                                     ; preds = %29
  %50 = load i32, i32* %7, align 4
  %51 = load double, double* %5, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 %50, double %51)
  ret i32 0
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
