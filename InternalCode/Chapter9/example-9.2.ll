; ModuleID = 'ClangNoteBook/Chapter9/example-9.2.c'
source_filename = "ClangNoteBook/Chapter9/example-9.2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [7 x i8] c"%8.2f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca [6 x double], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [6 x double]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 16, i1 false)
  %5 = bitcast i8* %4 to [6 x double]*
  %6 = getelementptr [6 x double], [6 x double]* %5, i32 0, i32 0
  store double 1.653000e+02, double* %6
  %7 = getelementptr [6 x double], [6 x double]* %5, i32 0, i32 1
  store double 1.582000e+02, double* %7
  %8 = getelementptr [6 x double], [6 x double]* %5, i32 0, i32 2
  store double 1.740000e+02, double* %8
  %9 = getelementptr [6 x double], [6 x double]* %5, i32 0, i32 3
  store double 1.816000e+02, double* %9
  %10 = getelementptr [6 x double], [6 x double]* %5, i32 0, i32 4
  store double 1.677000e+02, double* %10
  %11 = getelementptr [6 x double], [6 x double]* %5, i32 0, i32 5
  store double -1.000000e+00, double* %11
  %12 = getelementptr inbounds [6 x double], [6 x double]* %3, i32 0, i32 0
  store double* %12, double** %2, align 8
  br label %13

; <label>:13:                                     ; preds = %17, %0
  %14 = load double*, double** %2, align 8
  %15 = load double, double* %14, align 8
  %16 = fcmp ogt double %15, 0.000000e+00
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = load double*, double** %2, align 8
  %19 = load double, double* %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), double %19)
  %21 = load double*, double** %2, align 8
  %22 = getelementptr inbounds double, double* %21, i32 1
  store double* %22, double** %2, align 8
  br label %13

; <label>:23:                                     ; preds = %13
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
