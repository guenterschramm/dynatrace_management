param(
    [string]$TfvarsPath = (Join-Path $PSScriptRoot "terraform.tfvars"),
    [string]$TargetFolder = (Join-Path $PSScriptRoot ".."),
    [string[]]$Resources = @(
        "dynatrace_automation_business_calendar",
        "dynatrace_automation_scheduling_rule",
        "dynatrace_automation_workflow",
        "dynatrace_azure_connection",
        "dynatrace_azure_connection_authentication",
        "dynatrace_direct_shares",
        "dynatrace_document",
        "dynatrace_hub_extension_v2_config",
        "dynatrace_openpipeline_business_events",
        "dynatrace_openpipeline_davis_events",
        "dynatrace_openpipeline_davis_problems",
        "dynatrace_openpipeline_events",
        "dynatrace_openpipeline_logs",
        "dynatrace_openpipeline_metrics",
        "dynatrace_openpipeline_sdlc_events",
        "dynatrace_openpipeline_security_events",
        "dynatrace_openpipeline_spans",
        "dynatrace_openpipeline_system_events",
        "dynatrace_openpipeline_user_events",
        "dynatrace_openpipeline_user_sessions",
        "dynatrace_platform_bucket",
        "dynatrace_platform_slo",
        "dynatrace_segment",
        "dynatrace_settings_permissions"
    )
)

function Read-Tfvars {
    param([string]$Path)

    if (-not (Test-Path $Path)) {
        throw "terraform.tfvars nicht gefunden: $Path"
    }

    $vars = @{}
    Get-Content $Path | ForEach-Object {
        $line = $_.Trim()
        if (-not $line) { return }
        if ($line.StartsWith("#")) { return }
        if ($line.StartsWith("//")) { return }

        if ($line -match '^\s*([A-Za-z0-9_]+)\s*=\s*"(.*)"\s*$') {
            $vars[$matches[1]] = $matches[2]
        }
    }

    return $vars
}

function Find-DynatraceProviderExe {
    $candidateRoots = @(
        (Join-Path $TargetFolder ".terraform\providers\registry.terraform.io\dynatrace-oss\dynatrace"),
        (Join-Path (Join-Path $PSScriptRoot "..") ".terraform\providers\registry.terraform.io\dynatrace-oss\dynatrace")
    )

    $root = $candidateRoots | Where-Object { Test-Path $_ } | Select-Object -First 1

    if (-not (Test-Path $root)) {
        throw "Provider-Verzeichnis nicht gefunden. Bitte zuerst 'terraform init' im Workspace ausfuehren. Geprueft: $($candidateRoots -join ', ')"
    }

    $exe = Get-ChildItem -Path $root -Recurse -Filter "terraform-provider-dynatrace*.exe" |
           Sort-Object LastWriteTime -Descending |
           Select-Object -First 1

    if (-not $exe) {
        throw "Kein terraform-provider-dynatrace*.exe gefunden."
    }

    return $exe.FullName
}

function Write-ExportProgress {
    param(
        [int]$Current,
        [int]$Total,
        [string]$Status = "running",
        [string]$Resource = "",
        [int]$Failed = 0
    )

    if (-not $env:DT_EXPORT_PROGRESS_FILE) {
        return
    }

    $payload = @{
        current = $Current
        total = $Total
        status = $Status
        resource = $Resource
        failed = $Failed
    }

    $payload | ConvertTo-Json -Compress | Set-Content -Path $env:DT_EXPORT_PROGRESS_FILE -Encoding utf8
}

function Invoke-ResourceExport {
    param(
        [string]$ProviderExe,
        [string[]]$ResourceList
    )

    if (-not $ResourceList -or $ResourceList.Count -eq 0) {
        Write-Host "Ressourcen               = keine explizite Liste konfiguriert"
        return
    }

    $moduleDir = Join-Path $TargetFolder "modules"
    $moduleCount = 0
    if (Test-Path $moduleDir) {
        $moduleCount = (Get-ChildItem -Path $moduleDir -Directory | Measure-Object).Count
    }

    $total = $ResourceList.Count
    if ($moduleCount -gt 0) {
        $total = $moduleCount
    }
    $failed = 0
    Write-Host "Module (gesamt)          = $total"

    for ($i = 0; $i -lt $total; $i++) {
        $resource = $ResourceList[$i]
        $current = $i + 1
        Write-Host "[$current/$total] Export $resource"
        Write-ExportProgress -Current $current -Total $total -Status "running" -Resource $resource -Failed $failed

        & $ProviderExe -export $resource
        if ($LASTEXITCODE -ne 0) {
            $failed += 1
            Write-Warning "Export fehlgeschlagen fuer $resource (ExitCode=$LASTEXITCODE)."
        }
    }

    $successCount = $total - $failed
    if ($successCount -le 0) {
        Write-ExportProgress -Current $total -Total $total -Status "failed" -Resource "" -Failed $failed
        throw "Kein Ressourcentyp konnte exportiert werden (fehlgeschlagen: $failed/$total)."
    }

    if ($failed -gt 0) {
        Write-Warning "Export mit Warnungen abgeschlossen. Fehlgeschlagen: $failed/$total"
    }

    Write-ExportProgress -Current $total -Total $total -Status "done" -Resource "" -Failed $failed
}

try {
    terraform version | Out-Host

    $vars = Read-Tfvars -Path $TfvarsPath

    foreach ($required in @("platform_test_env_url", "platform_test_token")) {
        if (-not $vars.ContainsKey($required)) {
            throw "Variable '$required' fehlt in $TfvarsPath"
        }
    }

    if ([string]::IsNullOrWhiteSpace($vars["platform_test_token"])) {
        throw "Variable 'platform_test_token' ist leer in $TfvarsPath"
    }

    New-Item -ItemType Directory -Force -Path $TargetFolder | Out-Null

    $env:DYNATRACE_ENV_URL = $vars["platform_test_env_url"]
    $env:DYNATRACE_API_TOKEN = $vars["platform_test_token"]
    $env:DYNATRACE_PLATFORM_TOKEN = $vars["platform_test_token"]
    $env:DYNATRACE_TARGET_FOLDER = $TargetFolder

    Write-Host "=== Platform TEST Export ==="
    Write-Host "DYNATRACE_ENV_URL        = $env:DYNATRACE_ENV_URL"
    Write-Host "DYNATRACE_TARGET_FOLDER  = $env:DYNATRACE_TARGET_FOLDER"
    Write-Host "DYNATRACE_API_TOKEN      = gesetzt (Laenge: $($env:DYNATRACE_API_TOKEN.Length))"

    $providerExe = Find-DynatraceProviderExe
    Write-Host "Provider EXE             = $providerExe"

    Invoke-ResourceExport -ProviderExe $providerExe -ResourceList $Resources
}
catch {
    Write-Error $_
    exit 1
}