@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  application startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and APPLICATION_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\jb-hello-world-0.1.0.jar;%APP_HOME%\lib\joda-time-2.2.jar;%APP_HOME%\lib\jackson-databind-2.11.4.jar;%APP_HOME%\lib\jackson-core-2.11.4.jar;%APP_HOME%\lib\selenium-java-4.8.0.jar;%APP_HOME%\lib\selenium-chrome-driver-4.8.0.jar;%APP_HOME%\lib\selenium-devtools-v107-4.8.0.jar;%APP_HOME%\lib\selenium-devtools-v108-4.8.0.jar;%APP_HOME%\lib\selenium-devtools-v109-4.8.0.jar;%APP_HOME%\lib\selenium-firefox-driver-4.8.0.jar;%APP_HOME%\lib\selenium-devtools-v85-4.8.0.jar;%APP_HOME%\lib\selenium-edge-driver-4.8.0.jar;%APP_HOME%\lib\selenium-ie-driver-4.8.0.jar;%APP_HOME%\lib\selenium-safari-driver-4.8.0.jar;%APP_HOME%\lib\selenium-support-4.8.0.jar;%APP_HOME%\lib\selenium-chromium-driver-4.8.0.jar;%APP_HOME%\lib\selenium-remote-driver-4.8.0.jar;%APP_HOME%\lib\async-http-client-2.12.3.jar;%APP_HOME%\lib\async-http-client-netty-utils-2.12.3.jar;%APP_HOME%\lib\slf4j-api-2.0.6.jar;%APP_HOME%\lib\jackson-annotations-2.11.4.jar;%APP_HOME%\lib\selenium-http-4.8.0.jar;%APP_HOME%\lib\selenium-json-4.8.0.jar;%APP_HOME%\lib\selenium-manager-4.8.0.jar;%APP_HOME%\lib\selenium-api-4.8.0.jar;%APP_HOME%\lib\auto-service-1.0.1.jar;%APP_HOME%\lib\auto-service-annotations-1.0.1.jar;%APP_HOME%\lib\auto-common-1.2.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\jcommander-1.82.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.87.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.87.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.87.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.87.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.87.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.87.Final-osx-x86_64.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.87.Final.jar;%APP_HOME%\lib\netty-reactive-streams-2.0.4.jar;%APP_HOME%\lib\netty-handler-4.1.87.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.87.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-4.1.87.Final.jar;%APP_HOME%\lib\netty-transport-4.1.87.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.87.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.87.Final.jar;%APP_HOME%\lib\netty-common-4.1.87.Final.jar;%APP_HOME%\lib\opentelemetry-exporter-logging-1.22.0.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-1.22.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-spi-1.22.0.jar;%APP_HOME%\lib\opentelemetry-sdk-1.22.0.jar;%APP_HOME%\lib\opentelemetry-sdk-trace-1.22.0.jar;%APP_HOME%\lib\opentelemetry-sdk-metrics-1.22.0.jar;%APP_HOME%\lib\opentelemetry-sdk-logs-1.22.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-common-1.22.0.jar;%APP_HOME%\lib\opentelemetry-semconv-1.22.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-logs-1.22.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-1.22.0.jar;%APP_HOME%\lib\opentelemetry-context-1.22.0.jar;%APP_HOME%\lib\jtoml-2.0.0.jar;%APP_HOME%\lib\byte-buddy-1.12.22.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\failsafe-3.3.0.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar

@rem Execute application
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %APPLICATION_OPTS%  -classpath "%CLASSPATH%" application.ApplicationStart %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable APPLICATION_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%APPLICATION_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
