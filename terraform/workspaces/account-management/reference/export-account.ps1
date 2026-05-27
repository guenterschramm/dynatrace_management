param(
    [string]$TfvarsPath = "C:\Tools\Terraform\tf-dynatrace\terraform.tfvars",
    [string]$TargetFolder = "C:\Tools\Terraform\tf-dynatrace\account-management",
    [string[]]$Resources = @("dynatrace_iam_group",
        "dynatrace_iam_policy",
        "dynatrace_iam_policy_boundary",
        "dynatrace_iam_policy_bindings_v2",
        "dynatrace_iam_policy_bindings"
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

    foreach ($required in @("account_id", "account_client_id", "account_client_secret")) {
        if (-not $vars.ContainsKey($required)) {
            throw "Variable '$required' fehlt in $TfvarsPath"
        }
    }

    New-Item -ItemType Directory -Force -Path $TargetFolder | Out-Null

    $env:DT_ACCOUNT_ID = $vars["account_id"]
    $env:DT_CLIENT_ID = $vars["account_client_id"]
    $env:DT_CLIENT_SECRET = $vars["account_client_secret"]
    $env:DYNATRACE_TARGET_FOLDER = $TargetFolder

    Write-Host "=== Account Management Export ==="
    Write-Host "DT_ACCOUNT_ID          = gesetzt"
    if ($env:DT_CLIENT_ID) {
        Write-Host "DT_CLIENT_ID           = gesetzt"
    } else {
        Write-Host "DT_CLIENT_ID           = NICHT gesetzt"
    }
    if ($env:DT_CLIENT_SECRET) {
        Write-Host "DT_CLIENT_SECRET       = gesetzt"
    } else {
        Write-Host "DT_CLIENT_SECRET       = NICHT gesetzt"
    }
    Write-Host "DYNATRACE_TARGET_FOLDER = $env:DYNATRACE_TARGET_FOLDER"

    $providerExe = Find-DynatraceProviderExe
    Write-Host "Provider EXE           = $providerExe"
    Write-Host "Ressourcen             = $($Resources -join ', ')"

    $exportArgs = @("-export") + $Resources
    & $providerExe @exportArgs
}
catch {
    Write-Error $_
    exit 1
}