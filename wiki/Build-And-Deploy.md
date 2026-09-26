← [Home](index.md)

# Сборка и установка плагина

## Проект (`ExternalApiPlugin.csproj`)

SDK-style csproj (`<Project Sdk="Microsoft.NET.Sdk">`), а не классический MSBuild-формат — так проект собирается через `dotnet build` без установленной Visual Studio:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net48</TargetFramework>
    <RootNamespace>ExternalApiPlugin</RootNamespace>
    <AssemblyName>ExternalApiPlugin</AssemblyName>
    <OutputType>Library</OutputType>
    <GenerateAssemblyInfo>false</GenerateAssemblyInfo>
    <AppendTargetFrameworkToOutputPath>false</AppendTargetFrameworkToOutputPath>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Microsoft.NETFramework.ReferenceAssemblies" Version="1.0.3" PrivateAssets="all" />
  </ItemGroup>

  <PropertyGroup>
    <LoodsmanClientDir Condition="'$(OS)' == 'Windows_NT'">C:\Program Files (x86)\ASCON\Loodsman\Client\</LoodsmanClientDir>
    <LoodsmanClientDir Condition="'$(OS)' != 'Windows_NT'">/mnt/c/Program Files (x86)/ASCON/Loodsman/Client/</LoodsmanClientDir>
  </PropertyGroup>

  <ItemGroup>
    <Reference Include="Ascon.Plm.Loodsman.PluginSDK">
      <HintPath>$(LoodsmanClientDir)Ascon.Plm.Loodsman.PluginSDK.dll</HintPath>
      <Private>false</Private>
    </Reference>
    <Reference Include="System.Windows.Forms" />
    <Reference Include="System.Net.Http" />
  </ItemGroup>
</Project>
```

Почему так, а не классический `.csproj` с явным списком `<Compile Include>`:

- **`net48`, не `net472`.** `Ascon.Plm.Loodsman.PluginSDK.dll`, поставляемая с клиентом ЛОЦМАН, собрана под .NET Framework 4.8 — при таргете 4.7.2 сборка падала с `MSB3274` (несовместимость версии сборки-референса).
- **`Microsoft.NETFramework.ReferenceAssemblies` из NuGet.** На машине, где нет установленной Visual Studio (только .NET SDK), отсутствует Developer Pack для `net48`, и сборка падала с `MSB3644` ("не найдены reference assemblies для указанного framework"). Пакет из NuGet подтягивает эти reference-сборки без установки VS.
- **`LoodsmanClientDir` с условием по `$(OS)`.** Поддерживает сборку и из нативного Windows-окружения, и из WSL (`/mnt/c/...`), если понадобится.
- **`GenerateAssemblyInfo=false`** — `AssemblyInfo.cs` в проекте написан руками, автогенерация отключена, чтобы не было конфликта дублирующихся атрибутов.
- SDK-style проект по умолчанию неявно включает в сборку все `.cs`-файлы в каталоге проекта — явно перечислять `<Compile Include>` для `ExternalApiPluginClass.cs` / `ExternalApiForm.cs` не нужно.

## Сборка

Через `dotnet build` — либо из терминала, либо через задачи VS Code (`.vscode/tasks.json`, таска `build (Debug)` по умолчанию на `Ctrl+Shift+B`):

```
dotnet build ExternalApiPlugin/ExternalApiPlugin.csproj -c Debug
```

Изначально `tasks.json` вызывал `msbuild.exe` (требовало Developer Command Prompt с прогруженным окружением VS), но на рабочей машине оказалось, что Visual Studio не установлена (`msbuild.exe` отсутствует) — конфигурацию переключили на `dotnet build`/`dotnet clean`, что не требует VS вовсе, только .NET SDK.

Результат сборки — `ExternalApiPlugin/bin/Debug/ExternalApiPlugin.dll` (или `bin/Release/...` для Release-конфигурации).

## Установка в ЛОЦМАН Клиент

1. Скопировать `ExternalApiPlugin.dll` в `%ProgramData%\Ascon\Loodsman\PluginStore\ExternalApiPlugin\` (копировать саму `Ascon.Plm.Loodsman.PluginSDK.dll` не нужно — она уже есть рядом с клиентом, референс собран с `<Private>false</Private>`, т.е. не копируется в выходную папку).
2. В клиенте ЛОЦМАН, в настройках подключения к базе, найти список подключаемых плагинов (чекбоксы) и включить `ExternalApiPlugin`.
3. Переподключиться к базе — пункт меню "Внешний API → Тестовый запрос" появится на панели.

Никакого отдельного XML/ini-манифеста для регистрации плагина не требуется — подробнее см. [Loodsman-Plugin-SDK](Loodsman-Plugin-SDK.md#регистрация-в-ui).

## См. также

- [Loodsman-Plugin-SDK](Loodsman-Plugin-SDK.md)
- [Local-Testing](Local-Testing.md)
- [ExternalApiPlugin](ExternalApiPlugin.md)
