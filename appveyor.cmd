@setlocal
@set _P=%~dp0
@if "%CONFIGURATION%"=="" set CONFIGURATION=Debug
@if "%DNX_BUILD_VERSION%"=="" set DNX_BUILD_VERSION=build-private.99999

@pushd %_P%

dotnet publish .\src\AppSyndication.IdentityService.Web --configuration %CONFIGURATION% --version-suffix %DNX_BUILD_VERSION% --output %_P%artifacts\deploy

@goto :End

Fail:
@echo Must provide build number.
@exit /b -1

:End
@popd
@endlocal
