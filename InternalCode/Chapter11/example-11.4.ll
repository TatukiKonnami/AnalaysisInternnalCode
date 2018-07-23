; ModuleID = 'ClangNoteBook/Chapter11/example-11.4.c'
source_filename = "ClangNoteBook/Chapter11/example-11.4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"\E5\B9\B4 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\E6\9C\88 %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\E6\97\A5 %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\E6\9B\9C\E6\97\A5 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\E6\99\82 %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\E5\88\86 %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\E7\A7\92 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm, align 8
  store i32 0, i32* %1, align 4
  %4 = call i64 @time(i64* null)
  store i64 %4, i64* %2, align 8
  %5 = call %struct.tm* @localtime(i64* %2)
  %6 = bitcast %struct.tm* %3 to i8*
  %7 = bitcast %struct.tm* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1900
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %10)
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %14)
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %17)
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 %20)
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 %23)
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 %26)
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 %29)
  ret i32 0
}

declare i64 @time(i64*) #1

declare %struct.tm* @localtime(i64*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
