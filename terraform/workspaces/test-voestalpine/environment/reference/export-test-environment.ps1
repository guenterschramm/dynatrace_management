param(
    [string]$TfvarsPath = "C:\Tools\Terraform\tf-dynatrace\terraform.tfvars",
    [string]$TargetFolder = "C:\Tools\Terraform\tf-dynatrace\test-voestalpine\environment",
    [string[]]$Resources = @()
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
    $root = "C:\Tools\Terraform\tf-dynatrace\.terraform\providers\registry.terraform.io\dynatrace-oss\dynatrace"
    if (-not (Test-Path $root)) {
        throw "Provider-Verzeichnis nicht gefunden. Bitte zuerst 'terraform init' ausführen. Erwartet: $root"
    }

    $exe = Get-ChildItem -Path $root -Recurse -Filter "terraform-provider-dynatrace*.exe" |
           Sort-Object LastWriteTime -Descending |
           Select-Object -First 1

    if (-not $exe) {
        throw "Kein terraform-provider-dynatrace*.exe gefunden unter $root"
    }

    return $exe.FullName
}

try {
    $vars = Read-Tfvars -Path $TfvarsPath

    if (-not $vars.ContainsKey("tenant_test_env_url")) {
        throw "Variable 'tenant_test_env_url' fehlt in $TfvarsPath"
    }
    if (-not $vars.ContainsKey("tenant_test_api_token")) {
        throw "Variable 'tenant_test_api_token' fehlt in $TfvarsPath"
    }

    New-Item -ItemType Directory -Force -Path $TargetFolder | Out-Null

    $env:DYNATRACE_ENV_URL = $vars["tenant_test_env_url"]
    $env:DYNATRACE_API_TOKEN = $vars["tenant_test_api_token"]
    $env:DYNATRACE_TARGET_FOLDER = $TargetFolder

    # optional, damit IAM-Validierung vollständiger ist
    if ($vars.ContainsKey("account_id")) {
        $env:DT_ACCOUNT_ID = $vars["account_id"]
    }

    Write-Host "=== TEST Export ==="
    Write-Host "DYNATRACE_ENV_URL       = $env:DYNATRACE_ENV_URL"
    Write-Host "DYNATRACE_TARGET_FOLDER = $env:DYNATRACE_TARGET_FOLDER"
    if ($env:DYNATRACE_API_TOKEN) {
        Write-Host "DYNATRACE_API_TOKEN    = gesetzt (Länge: $($env:DYNATRACE_API_TOKEN.Length))"
    } else {
        Write-Host "DYNATRACE_API_TOKEN    = NICHT gesetzt"
    }
    if ($env:DT_ACCOUNT_ID) {
        Write-Host "DT_ACCOUNT_ID          = gesetzt"
    } else {
        Write-Host "DT_ACCOUNT_ID          = nicht gesetzt (IAM-Validierung evtl. unvollständig)"
    }

    $providerExe = Find-DynatraceProviderExe
    Write-Host "Provider EXE           = $providerExe"

    $exportArgs = @("-export")
    if ($Resources.Count -gt 0) {
        $exportArgs += $Resources
        Write-Host "Ressourcen             = $($Resources -join ', ')"
    } else {
        Write-Host "Ressourcen             = Standard-Export (alles, was nicht ausgeschlossen ist)"
    }

    & $providerExe @exportArgs
}
catch {
    Write-Error $_
    exit 1
}