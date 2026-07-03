param(
    [string]$TfvarsPath = (Join-Path $PSScriptRoot "terraform.tfvars"),
    [string]$TargetFolder = (Join-Path $PSScriptRoot ".."),
    [string[]]$Resources = @("dynatrace_iam_group",
        "dynatrace_iam_permission",
        "dynatrace_iam_policy",
        "dynatrace_iam_policy_boundary",
        "dynatrace_iam_policy_bindings_v2",
        "dynatrace_iam_policy_bindings",
        "dynatrace_iam_service_user",
        "dynatrace_iam_user",
        "dynatrace_mgmz_permission",
        "dynatrace_policy_bindings",
        "dynatrace_user",
        "dynatrace_user_group"
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
        throw "Provider-Verzeichnis nicht gefunden. Bitte zuerst 'terraform init' im Workspace ausführen. Geprueft: $($candidateRoots -join ', ')"
    }

    $exe = Get-ChildItem -Path $root -Recurse -Filter "terraform-provider-dynatrace*.exe" |
           Sort-Object LastWriteTime -Descending |
           Select-Object -First 1

    if (-not $exe) {
        throw "Kein terraform-provider-dynatrace*.exe gefunden unter $root"
    }

    return $exe.FullName
}

function Test-AccountOAuth {
    param(
        [string]$ClientId,
        [string]$ClientSecret
    )

    $oauthBody = @{
        grant_type = "client_credentials"
        client_id = $ClientId
        client_secret = $ClientSecret
        scope = "account-idm-read"
    }

    try {
        $null = Invoke-RestMethod -Method Post -Uri "https://sso.dynatrace.com/sso/oauth2/token" -Body $oauthBody -ContentType "application/x-www-form-urlencoded"
    }
    catch {
        throw "Account OAuth fehlgeschlagen. Bitte account_client_id/account_client_secret in terraform.tfvars pruefen. Details: $($_.Exception.Message)"
    }
}

try {
    $vars = Read-Tfvars -Path $TfvarsPath

    foreach ($required in @("account_id", "account_client_id", "account_client_secret")) {
        if (-not $vars.ContainsKey($required)) {
            throw "Variable '$required' fehlt in $TfvarsPath"
        }
    }

    foreach ($required in @("account_id", "account_client_id", "account_client_secret")) {
        if ([string]::IsNullOrWhiteSpace($vars[$required])) {
            throw "Variable '$required' ist leer in $TfvarsPath"
        }
    }

    New-Item -ItemType Directory -Force -Path $TargetFolder | Out-Null
    $resolvedTargetFolder = (Resolve-Path $TargetFolder).Path

    $env:DT_ACCOUNT_ID = $vars["account_id"]
    $env:DT_CLIENT_ID = $vars["account_client_id"]
    $env:DT_CLIENT_SECRET = $vars["account_client_secret"]
    $env:DYNATRACE_TARGET_FOLDER = $resolvedTargetFolder

    Test-AccountOAuth -ClientId $env:DT_CLIENT_ID -ClientSecret $env:DT_CLIENT_SECRET

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
    Write-Host "Ressourcen (gesamt)    = $($Resources -join ', ')"

    $accountResources = @(
        "dynatrace_iam_group",
        "dynatrace_iam_permission",
        "dynatrace_iam_policy",
        "dynatrace_iam_policy_boundary",
        "dynatrace_iam_policy_bindings_v2",
        "dynatrace_iam_policy_bindings",
        "dynatrace_iam_service_user",
        "dynatrace_iam_user"
    ) | Where-Object { $Resources -contains $_ }

    $environmentResources = @(
        "dynatrace_mgmz_permission",
        "dynatrace_policy_bindings",
        "dynatrace_user",
        "dynatrace_user_group"
    ) | Where-Object { $Resources -contains $_ }

    if ($accountResources.Count -gt 0) {
        Write-Host "Export Account IAM     = $($accountResources -join ', ')"
        $accountArgs = @("-export") + $accountResources
        & $providerExe @accountArgs
        if ($LASTEXITCODE -ne 0) {
            throw "Account-IAM Export fehlgeschlagen (ExitCode=$LASTEXITCODE)."
        }
    }

    if ($environmentResources.Count -gt 0) {
        $envUrl = $null
        $apiToken = $null

        if ($vars.ContainsKey("tenant_test_env_url")) {
            $envUrl = $vars["tenant_test_env_url"]
        }
        if ($vars.ContainsKey("tenant_test_api_token")) {
            $apiToken = $vars["tenant_test_api_token"]
        }

        if ([string]::IsNullOrWhiteSpace($envUrl) -or [string]::IsNullOrWhiteSpace($apiToken)) {
            throw "Environment-Ressourcen angefordert, aber tenant_test_env_url / tenant_test_api_token fehlen oder sind leer in terraform.tfvars."
        } else {
            # Keep account credentials and add environment credentials for tenant resources.
            $env:DYNATRACE_ENV_URL = $envUrl
            $env:DYNATRACE_API_TOKEN = $apiToken
            $env:DT_ENV_URL = $envUrl
            $env:DT_API_TOKEN = $apiToken

            Write-Host "Export Environment IAM = $($environmentResources -join ', ')"
            $envArgs = @("-export") + $environmentResources
            & $providerExe @envArgs
            if ($LASTEXITCODE -ne 0) {
                throw "Environment-IAM Export fehlgeschlagen (ExitCode=$LASTEXITCODE)."
            }
        }
    }
}
catch {
    Write-Error $_
    exit 1
}