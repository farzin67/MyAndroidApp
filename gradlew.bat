@echo off
rem ##########################################################################
rem  Gradle start up script for Windows
rem ##########################################################################

setlocal

rem تعیین مسیر پوشه‌ی جاری
set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set DEFAULT_JVM_OPTS=
set DEFAULT_GRADLE_OPTS=

rem پیدا کردن اجرای java.exe
if defined JAVA_HOME goto findJavaFromJavaHome
  for %%i in (java.exe) do (
    for /f "delims=" %%j in ('where "%%i" 2^>nul') do set "JAVA_EXE=%%j"
  )
:findJavaFromJavaHome
if not defined JAVA_HOME goto continue
set "JAVA_EXE=%JAVA_HOME%\bin\java.exe"
:continue

rem بررسی وجود فایل java.exe
if not exist "%JAVA_EXE%" (
  echo.
  echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
  echo Please set the JAVA_HOME variable in your environment to match the
  echo location of your Java installation.
  exit /b 1
)

rem تعیین مسیر jar مربوط به gradle wrapper
set CLASSPATH=%DIRNAME%\gradle\wrapper\gradle-wrapper.jar

rem اجرای Gradle با استفاده از GradleWrapperMain
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %DEFAULT_GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

endlocal
