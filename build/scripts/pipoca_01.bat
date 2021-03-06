@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  pipoca_01 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and PIPOCA_01_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\pipoca_01-1.0-SNAPSHOT-plain.jar;%APP_HOME%\lib\camunda-bpm-spring-boot-starter-rest-7.16.0.jar;%APP_HOME%\lib\camunda-bpm-spring-boot-starter-webapp-7.16.0.jar;%APP_HOME%\lib\postgresql-42.3.3.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-2.6.4.jar;%APP_HOME%\lib\camunda-bpm-spring-boot-starter-webapp-core-7.16.0.jar;%APP_HOME%\lib\camunda-bpm-spring-boot-starter-7.16.0.jar;%APP_HOME%\lib\camunda-engine-rest-jaxrs2-7.16.0.jar;%APP_HOME%\lib\spring-boot-starter-jersey-2.6.5.jar;%APP_HOME%\lib\camunda-webapp-webjar-7.16.0.jar;%APP_HOME%\lib\checker-qual-3.5.0.jar;%APP_HOME%\lib\spring-boot-starter-web-2.6.5.jar;%APP_HOME%\lib\spring-boot-starter-json-2.6.5.jar;%APP_HOME%\lib\spring-boot-starter-validation-2.6.5.jar;%APP_HOME%\lib\spring-boot-starter-2.6.5.jar;%APP_HOME%\lib\HikariCP-4.0.3.jar;%APP_HOME%\lib\spring-orm-5.3.17.jar;%APP_HOME%\lib\spring-jdbc-5.3.17.jar;%APP_HOME%\lib\camunda-engine-spring-7.16.0.jar;%APP_HOME%\lib\jersey-spring5-2.35.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.6.5.jar;%APP_HOME%\lib\spring-boot-2.6.5.jar;%APP_HOME%\lib\spring-webmvc-5.3.17.jar;%APP_HOME%\lib\spring-context-5.3.17.jar;%APP_HOME%\lib\spring-tx-5.3.17.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\java-uuid-generator-3.2.0.jar;%APP_HOME%\lib\jaxb-impl-2.2.4.jar;%APP_HOME%\lib\commons-fileupload-1.4.jar;%APP_HOME%\lib\commons-io-2.8.0.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.13.2.jar;%APP_HOME%\lib\jersey-media-json-jackson-2.35.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.13.2.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.13.2.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.13.2.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.13.2.jar;%APP_HOME%\lib\jackson-databind-2.13.2.jar;%APP_HOME%\lib\jackson-annotations-2.13.2.jar;%APP_HOME%\lib\jackson-core-2.13.2.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.13.2.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.6.5.jar;%APP_HOME%\lib\spring-web-5.3.17.jar;%APP_HOME%\lib\jersey-container-servlet-2.35.jar;%APP_HOME%\lib\jersey-container-servlet-core-2.35.jar;%APP_HOME%\lib\jersey-bean-validation-2.35.jar;%APP_HOME%\lib\jersey-server-2.35.jar;%APP_HOME%\lib\camunda-webapp-7.16.0-classes.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.6.5.jar;%APP_HOME%\lib\jersey-client-2.35.jar;%APP_HOME%\lib\jersey-hk2-2.35.jar;%APP_HOME%\lib\jersey-common-2.35.jar;%APP_HOME%\lib\hk2-2.6.1.jar;%APP_HOME%\lib\hk2-core-2.6.1.jar;%APP_HOME%\lib\hk2-runlevel-2.6.1.jar;%APP_HOME%\lib\hk2-locator-2.6.1.jar;%APP_HOME%\lib\hk2-api-2.6.1.jar;%APP_HOME%\lib\hk2-utils-2.6.1.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\camunda-engine-7.16.0.jar;%APP_HOME%\lib\spring-aop-5.3.17.jar;%APP_HOME%\lib\spring-beans-5.3.17.jar;%APP_HOME%\lib\spring-expression-5.3.17.jar;%APP_HOME%\lib\spring-core-5.3.17.jar;%APP_HOME%\lib\snakeyaml-1.29.jar;%APP_HOME%\lib\logback-classic-1.2.11.jar;%APP_HOME%\lib\log4j-to-slf4j-2.17.2.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.36.jar;%APP_HOME%\lib\camunda-engine-dmn-7.16.0.jar;%APP_HOME%\lib\camunda-engine-feel-juel-7.16.0.jar;%APP_HOME%\lib\camunda-engine-feel-scala-7.16.0.jar;%APP_HOME%\lib\camunda-engine-feel-api-7.16.0.jar;%APP_HOME%\lib\camunda-commons-typed-values-7.16.0.jar;%APP_HOME%\lib\camunda-connect-connectors-all-1.5.2.jar;%APP_HOME%\lib\camunda-connect-core-1.5.2.jar;%APP_HOME%\lib\camunda-commons-utils-1.10.0.jar;%APP_HOME%\lib\camunda-commons-logging-1.10.0.jar;%APP_HOME%\lib\feel-engine-1.13.1-scala-shaded.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\jaxb-api-2.3.1.jar;%APP_HOME%\lib\tomcat-embed-websocket-9.0.60.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.60.jar;%APP_HOME%\lib\tomcat-embed-el-9.0.60.jar;%APP_HOME%\lib\hibernate-validator-6.2.3.Final.jar;%APP_HOME%\lib\jersey-entity-filtering-2.35.jar;%APP_HOME%\lib\jakarta.ws.rs-api-2.1.6.jar;%APP_HOME%\lib\spring-bridge-2.6.1.jar;%APP_HOME%\lib\jakarta.inject-2.6.1.jar;%APP_HOME%\lib\jakarta.validation-api-2.0.2.jar;%APP_HOME%\lib\spring-jcl-5.3.17.jar;%APP_HOME%\lib\camunda-bpmn-model-7.16.0.jar;%APP_HOME%\lib\camunda-cmmn-model-7.16.0.jar;%APP_HOME%\lib\mybatis-3.5.6.jar;%APP_HOME%\lib\joda-time-2.1.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\jboss-logging-3.4.3.Final.jar;%APP_HOME%\lib\classmate-1.5.1.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.3.jar;%APP_HOME%\lib\javassist-3.25.0-GA.jar;%APP_HOME%\lib\class-model-2.6.1.jar;%APP_HOME%\lib\logback-core-1.2.11.jar;%APP_HOME%\lib\log4j-api-2.17.2.jar;%APP_HOME%\lib\camunda-dmn-model-7.16.0.jar;%APP_HOME%\lib\camunda-xml-model-7.16.0.jar;%APP_HOME%\lib\aopalliance-repackaged-2.6.1.jar;%APP_HOME%\lib\asm-commons-7.1.jar;%APP_HOME%\lib\asm-util-7.1.jar;%APP_HOME%\lib\asm-analysis-7.1.jar;%APP_HOME%\lib\asm-tree-7.1.jar;%APP_HOME%\lib\asm-7.1.jar


@rem Execute pipoca_01
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %PIPOCA_01_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable PIPOCA_01_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%PIPOCA_01_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
