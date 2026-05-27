param(
    [string]$TfvarsPath = "C:\Tools\Terraform\tf-dynatrace\terraform.tfvars",
    [string]$TargetFolder = "C:\Tools\Terraform\tf-dynatrace\voestalpine\platform",
    [string[]]$Resources = @(
        "dynatrace_document",
        "dynatrace_automation_workflow",
        "dynatrace_platform_slo",
        "dynatrace_direct_shares",
        "dynatrace_generic_setting"
    )
)

$env:Path = "C:\Tools\Terraform;$env:Path"

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
        throw "Provider-Verzeichnis nicht gefunden. Bitte zuerst 'terraform init' ausführen."
    }

    $exe = Get-ChildItem -Path $root -Recurse -Filter "terraform-provider-dynatrace*.exe" |
           Sort-Object LastWriteTime -Descending |
           Select-Object -First 1

    if (-not $exe) {
        throw "Kein terraform-provider-dynatrace*.exe gefunden."
    }

    return $exe.FullName
}

try {
    terraform version | Out-Host

    $vars = Read-Tfvars -Path $TfvarsPath

    foreach ($required in @("platform_prod_env_url", "platform_prod_token")) {
        if (-not $vars.ContainsKey($required)) {
            throw "Variable '$required' fehlt in $TfvarsPath"
        }
    }

    New-Item -ItemType Directory -Force -Path $TargetFolder | Out-Null

    $env:DYNATRACE_ENV_URL = $vars["platform_prod_env_url"]
    $env:DYNATRACE_PLATFORM_TOKEN = $vars["platform_prod_token"]
    $env:DYNATRACE_TARGET_FOLDER = $TargetFolder

    Write-Host "=== Platform PROD Export ==="
    Write-Host "DYNATRACE_ENV_URL        = $env:DYNATRACE_ENV_URL"
    Write-Host "DYNATRACE_TARGET_FOLDER  = $env:DYNATRACE_TARGET_FOLDER"
    Write-Host "DYNATRACE_PLATFORM_TOKEN = gesetzt"
    Write-Host "Ressourcen               = $($Resources -join ', ')"

    $providerExe = Find-DynatraceProviderExe
    Write-Host "Provider EXE             = $providerExe"

    $exportArgs = @("-export") + $Resources
    & $providerExe @exportArgs
}
catch {
    Write-Error $_
    exit 1
}