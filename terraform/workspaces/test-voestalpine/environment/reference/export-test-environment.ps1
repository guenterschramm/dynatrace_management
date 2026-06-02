param(
    [string]$TfvarsPath = (Join-Path $PSScriptRoot "terraform.tfvars"),
    [string]$TargetFolder = (Join-Path $PSScriptRoot ".."),
    [string[]]$Resources = @(
        "dynatrace_activegate_token",
        "dynatrace_activegate_updates",
        "dynatrace_ag_token",
        "dynatrace_aix_extension",
        "dynatrace_alerting",
        "dynatrace_ansible_tower_notification",
        "dynatrace_api_detection",
        "dynatrace_api_token",
        "dynatrace_app_monitoring",
        "dynatrace_application_detection_rule",
        "dynatrace_application_detection_rule_v2",
        "dynatrace_application_error_rules",
        "dynatrace_appsec_notification",
        "dynatrace_attack_alerting",
        "dynatrace_attack_allowlist",
        "dynatrace_attack_rules",
        "dynatrace_attack_settings",
        "dynatrace_attribute_allow_list",
        "dynatrace_attribute_block_list",
        "dynatrace_attribute_masking",
        "dynatrace_attributes_preferences",
        "dynatrace_audit_log",
        "dynatrace_automation_approval",
        "dynatrace_automation_controller_connections",
        "dynatrace_automation_workflow_aws_connections",
        "dynatrace_automation_workflow_jira",
        "dynatrace_automation_workflow_k8s_connections",
        "dynatrace_automation_workflow_slack",
        "dynatrace_autotag_rules",
        "dynatrace_autotag_v2",
        "dynatrace_aws_anomalies",
        "dynatrace_aws_connection",
        "dynatrace_aws_connection_role_arn",
        "dynatrace_aws_credentials",
        "dynatrace_aws_service",
        "dynatrace_azure_credentials",
        "dynatrace_azure_service",
        "dynatrace_browser_monitor",
        "dynatrace_browser_monitor_outage",
        "dynatrace_browser_monitor_performance",
        "dynatrace_builtin_process_monitoring",
        "dynatrace_business_events_buckets",
        "dynatrace_business_events_capturing_variants",
        "dynatrace_business_events_metrics",
        "dynatrace_business_events_oneagent",
        "dynatrace_business_events_oneagent_outgoing",
        "dynatrace_business_events_processing",
        "dynatrace_business_events_security_context",
        "dynatrace_calculated_mobile_metric",
        "dynatrace_calculated_service_metric",
        "dynatrace_calculated_synthetic_metric",
        "dynatrace_calculated_web_metric",
        "dynatrace_cloud_development_environments",
        "dynatrace_cloud_foundry",
        "dynatrace_cloudapp_workloaddetection",
        "dynatrace_connectivity_alerts",
        "dynatrace_container_builtin_rule",
        "dynatrace_container_registry",
        "dynatrace_container_rule",
        "dynatrace_container_technology",
        "dynatrace_crashdump_analytics",
        "dynatrace_credentials",
        "dynatrace_custom_app_anomalies",
        "dynatrace_custom_app_crash_rate",
        "dynatrace_custom_app_enablement",
        "dynatrace_custom_device",
        "dynatrace_custom_service",
        "dynatrace_custom_tags",
        "dynatrace_custom_units",
        "dynatrace_dashboard_sharing",
        "dynatrace_dashboards_allowlist",
        "dynatrace_dashboards_general",
        "dynatrace_dashboards_presets",
        "dynatrace_data_privacy",
        "dynatrace_database_anomalies_v2",
        "dynatrace_davis_anomaly_detectors",
        "dynatrace_davis_copilot",
        "dynatrace_db_app_feature_flags",
        "dynatrace_ddu_pool",
        "dynatrace_declarative_grouping",
        "dynatrace_default_launchpad",
        "dynatrace_devobs_agent_optin",
        "dynatrace_devobs_data_masking",
        "dynatrace_devobs_git_onprem",
        "dynatrace_discovery_default_rules",
        "dynatrace_discovery_feature_flags",
        "dynatrace_disk_analytics",
        "dynatrace_disk_anomalies_v2",
        "dynatrace_disk_anomaly_rules",
        "dynatrace_disk_edge_anomaly_detectors",
        "dynatrace_disk_options",
        "dynatrace_disk_specific_anomalies_v2",
        "dynatrace_ebpf_service_discovery",
        "dynatrace_email_notification",
        "dynatrace_endpoint_detection_rules",
        "dynatrace_endpoint_detection_rules_optin",
        "dynatrace_environment",
        "dynatrace_eula_settings",
        "dynatrace_event_driven_ansible_connections",
        "dynatrace_extension_execution_controller",
        "dynatrace_extension_execution_remote",
        "dynatrace_failure_detection_parameters",
        "dynatrace_failure_detection_rule_sets",
        "dynatrace_failure_detection_rules",
        "dynatrace_frequent_issues",
        "dynatrace_generic_relationships",
        "dynatrace_generic_setting",
        "dynatrace_generic_types",
        "dynatrace_geolocation",
        "dynatrace_github_connection",
        "dynatrace_gitlab_connection",
        "dynatrace_grail_metrics_allowall",
        "dynatrace_grail_metrics_allowlist",
        "dynatrace_grail_security_context",
        "dynatrace_histogram_metrics",
        "dynatrace_host_anomalies_v2",
        "dynatrace_host_monitoring",
        "dynatrace_host_monitoring_advanced",
        "dynatrace_host_monitoring_mode",
        "dynatrace_host_naming",
        "dynatrace_host_process_group_monitoring",
        "dynatrace_http_monitor",
        "dynatrace_http_monitor_cookies",
        "dynatrace_http_monitor_outage",
        "dynatrace_http_monitor_performance",
        "dynatrace_http_monitor_script",
        "dynatrace_hub_extension_active_version",
        "dynatrace_hub_extension_config",
        "dynatrace_hub_permissions",
        "dynatrace_hub_subscriptions",
        "dynatrace_ibm_mq_filters",
        "dynatrace_ims_bridges",
        "dynatrace_infraops_app_feature_flags",
        "dynatrace_infraops_app_settings",
        "dynatrace_ip_address_masking",
        "dynatrace_issue_tracking",
        "dynatrace_jenkins_connection",
        "dynatrace_jira_notification",
        "dynatrace_json_dashboard",
        "dynatrace_json_dashboard_base",
        "dynatrace_k8s_cluster_anomalies",
        "dynatrace_k8s_monitoring",
        "dynatrace_k8s_namespace_anomalies",
        "dynatrace_k8s_node_anomalies",
        "dynatrace_k8s_pvc_anomalies",
        "dynatrace_k8s_workload_anomalies",
        "dynatrace_key_requests",
        "dynatrace_key_user_action",
        "dynatrace_kubernetes",
        "dynatrace_kubernetes_app",
        "dynatrace_kubernetes_enrichment",
        "dynatrace_kubernetes_spm",
        "dynatrace_limit_outbound_connections",
        "dynatrace_log_agent_feature_flags",
        "dynatrace_log_buckets",
        "dynatrace_log_custom_attribute",
        "dynatrace_log_custom_source",
        "dynatrace_log_debug_settings",
        "dynatrace_log_events",
        "dynatrace_log_grail",
        "dynatrace_log_metrics",
        "dynatrace_log_oneagent",
        "dynatrace_log_processing",
        "dynatrace_log_security_context",
        "dynatrace_log_sensitive_data_masking",
        "dynatrace_log_storage",
        "dynatrace_log_timestamp",
        "dynatrace_mainframe_transaction_monitoring",
        "dynatrace_maintenance",
        "dynatrace_managed_backup",
        "dynatrace_managed_internet_proxy",
        "dynatrace_managed_network_zones",
        "dynatrace_managed_preferences",
        "dynatrace_managed_public_endpoints",
        "dynatrace_managed_remote_access",
        "dynatrace_managed_smtp",
        "dynatrace_management_zone_v2",
        "dynatrace_metric_events",
        "dynatrace_metric_metadata",
        "dynatrace_metric_query",
        "dynatrace_mgmz_permission",
        "dynatrace_mobile_app_anomalies",
        "dynatrace_mobile_app_crash_rate",
        "dynatrace_mobile_app_enablement",
        "dynatrace_mobile_app_key_performance",
        "dynatrace_mobile_app_request_errors",
        "dynatrace_mobile_application",
        "dynatrace_mobile_notifications",
        "dynatrace_monitored_technologies_apache",
        "dynatrace_monitored_technologies_dotnet",
        "dynatrace_monitored_technologies_go",
        "dynatrace_monitored_technologies_iis",
        "dynatrace_monitored_technologies_java",
        "dynatrace_monitored_technologies_nginx",
        "dynatrace_monitored_technologies_nodejs",
        "dynatrace_monitored_technologies_opentracing",
        "dynatrace_monitored_technologies_php",
        "dynatrace_monitored_technologies_python",
        "dynatrace_monitored_technologies_varnish",
        "dynatrace_monitored_technologies_wsmb",
        "dynatrace_ms365_email_connection",
        "dynatrace_msentraid_connection",
        "dynatrace_msteams_connection",
        "dynatrace_muted_requests",
        "dynatrace_nettracer",
        "dynatrace_network_monitor",
        "dynatrace_network_monitor_outage",
        "dynatrace_network_traffic",
        "dynatrace_network_zone",
        "dynatrace_network_zones",
        "dynatrace_oneagent_default_mode",
        "dynatrace_oneagent_default_version",
        "dynatrace_oneagent_features",
        "dynatrace_oneagent_side_masking",
        "dynatrace_oneagent_updates",
        "dynatrace_openpipeline_v2_bizevents_ingestsources",
        "dynatrace_openpipeline_v2_bizevents_pipelinegroups",
        "dynatrace_openpipeline_v2_bizevents_pipelines",
        "dynatrace_openpipeline_v2_bizevents_routing",
        "dynatrace_openpipeline_v2_davis_events_ingestsources",
        "dynatrace_openpipeline_v2_davis_events_pipelinegroups",
        "dynatrace_openpipeline_v2_davis_events_pipelines",
        "dynatrace_openpipeline_v2_davis_events_routing",
        "dynatrace_openpipeline_v2_davis_problems_ingestsources",
        "dynatrace_openpipeline_v2_davis_problems_pipelinegroups",
        "dynatrace_openpipeline_v2_davis_problems_pipelines",
        "dynatrace_openpipeline_v2_davis_problems_routing",
        "dynatrace_openpipeline_v2_events_ingestsources",
        "dynatrace_openpipeline_v2_events_pipelinegroups",
        "dynatrace_openpipeline_v2_events_pipelines",
        "dynatrace_openpipeline_v2_events_routing",
        "dynatrace_openpipeline_v2_events_sdlc_ingestsources",
        "dynatrace_openpipeline_v2_events_sdlc_pipelinegroups",
        "dynatrace_openpipeline_v2_events_sdlc_pipelines",
        "dynatrace_openpipeline_v2_events_sdlc_routing",
        "dynatrace_openpipeline_v2_events_security_ingestsources",
        "dynatrace_openpipeline_v2_events_security_pipelinegroups",
        "dynatrace_openpipeline_v2_events_security_pipelines",
        "dynatrace_openpipeline_v2_events_security_routing",
        "dynatrace_openpipeline_v2_logs_ingestsources",
        "dynatrace_openpipeline_v2_logs_pipelinegroups",
        "dynatrace_openpipeline_v2_logs_pipelines",
        "dynatrace_openpipeline_v2_logs_routing",
        "dynatrace_openpipeline_v2_metrics_ingestsources",
        "dynatrace_openpipeline_v2_metrics_pipelinegroups",
        "dynatrace_openpipeline_v2_metrics_pipelines",
        "dynatrace_openpipeline_v2_metrics_routing",
        "dynatrace_openpipeline_v2_security_events_ingestsources",
        "dynatrace_openpipeline_v2_security_events_pipelinegroups",
        "dynatrace_openpipeline_v2_security_events_pipelines",
        "dynatrace_openpipeline_v2_security_events_routing",
        "dynatrace_openpipeline_v2_spans_ingestsources",
        "dynatrace_openpipeline_v2_spans_pipelinegroups",
        "dynatrace_openpipeline_v2_spans_pipelines",
        "dynatrace_openpipeline_v2_spans_routing",
        "dynatrace_openpipeline_v2_system_events_ingestsources",
        "dynatrace_openpipeline_v2_system_events_pipelinegroups",
        "dynatrace_openpipeline_v2_system_events_pipelines",
        "dynatrace_openpipeline_v2_system_events_routing",
        "dynatrace_openpipeline_v2_user_events_ingestsources",
        "dynatrace_openpipeline_v2_user_events_pipelinegroups",
        "dynatrace_openpipeline_v2_user_events_pipelines",
        "dynatrace_openpipeline_v2_user_events_routing",
        "dynatrace_openpipeline_v2_usersessions_ingestsources",
        "dynatrace_openpipeline_v2_usersessions_pipelinegroups",
        "dynatrace_openpipeline_v2_usersessions_pipelines",
        "dynatrace_openpipeline_v2_usersessions_routing",
        "dynatrace_opentelemetry_metrics",
        "dynatrace_ops_genie_notification",
        "dynatrace_os_services",
        "dynatrace_ownership_config",
        "dynatrace_ownership_teams",
        "dynatrace_pager_duty_notification",
        "dynatrace_pagerduty_connection",
        "dynatrace_pg_alerting",
        "dynatrace_policy",
        "dynatrace_policy_bindings",
        "dynatrace_problem_fields",
        "dynatrace_problem_record_propagation_rules",
        "dynatrace_process_availability",
        "dynatrace_process_group_detection",
        "dynatrace_process_group_detection_flags",
        "dynatrace_process_group_monitoring",
        "dynatrace_process_group_rum",
        "dynatrace_process_group_simple_detection",
        "dynatrace_process_grouping_rules",
        "dynatrace_process_monitoring",
        "dynatrace_process_monitoring_rule",
        "dynatrace_process_visibility",
        "dynatrace_processgroup_naming",
        "dynatrace_queue_manager",
        "dynatrace_queue_sharing_groups",
        "dynatrace_remote_environments",
        "dynatrace_report",
        "dynatrace_request_attribute",
        "dynatrace_request_naming",
        "dynatrace_request_namings",
        "dynatrace_resource_attributes",
        "dynatrace_rpc_based_sampling",
        "dynatrace_rum_advanced_correlation",
        "dynatrace_rum_host_headers",
        "dynatrace_rum_ip_determination",
        "dynatrace_rum_ip_locations",
        "dynatrace_rum_overload_prevention",
        "dynatrace_rum_provider_breakdown",
        "dynatrace_security_context",
        "dynatrace_service_anomalies_v2",
        "dynatrace_service_detection_rules",
        "dynatrace_service_external_web_request",
        "dynatrace_service_external_web_service",
        "dynatrace_service_failure",
        "dynatrace_service_full_web_request",
        "dynatrace_service_full_web_service",
        "dynatrace_service_http_failure",
        "dynatrace_service_naming",
        "dynatrace_service_now_notification",
        "dynatrace_service_splitting",
        "dynatrace_servicenow_connection",
        "dynatrace_session_replay_resource_capture",
        "dynatrace_session_replay_web_privacy",
        "dynatrace_site_reliability_guardian",
        "dynatrace_slack_notification",
        "dynatrace_slo",
        "dynatrace_slo_normalization",
        "dynatrace_slo_v2",
        "dynatrace_span_attribute",
        "dynatrace_span_capture_rule",
        "dynatrace_span_context_propagation",
        "dynatrace_span_entry_point",
        "dynatrace_span_events",
        "dynatrace_synthetic_availability",
        "dynatrace_synthetic_location",
        "dynatrace_token_settings",
        "dynatrace_transaction_start_filters",
        "dynatrace_trello_notification",
        "dynatrace_unified_services_metrics",
        "dynatrace_unified_services_opentel",
        "dynatrace_update_windows",
        "dynatrace_url_based_sampling",
        "dynatrace_usability_analytics",
        "dynatrace_user",
        "dynatrace_user_action_metrics",
        "dynatrace_user_experience_score",
        "dynatrace_user_group",
        "dynatrace_user_session_metrics",
        "dynatrace_user_settings",
        "dynatrace_victor_ops_notification",
        "dynatrace_vmware",
        "dynatrace_vmware_anomalies",
        "dynatrace_vulnerability_alerting",
        "dynatrace_vulnerability_code",
        "dynatrace_vulnerability_settings",
        "dynatrace_vulnerability_third_party",
        "dynatrace_vulnerability_third_party_attr",
        "dynatrace_vulnerability_third_party_k8s",
        "dynatrace_web_app_anomalies",
        "dynatrace_web_app_auto_injection",
        "dynatrace_web_app_beacon_endpoint",
        "dynatrace_web_app_beacon_origins",
        "dynatrace_web_app_custom_config_properties",
        "dynatrace_web_app_custom_errors",
        "dynatrace_web_app_custom_injection",
        "dynatrace_web_app_custom_prop_restrictions",
        "dynatrace_web_app_enablement",
        "dynatrace_web_app_injection_cookie",
        "dynatrace_web_app_ip_address_exclusion",
        "dynatrace_web_app_javascript_filename",
        "dynatrace_web_app_javascript_updates",
        "dynatrace_web_app_javascript_version",
        "dynatrace_web_app_key_performance_custom",
        "dynatrace_web_app_key_performance_load",
        "dynatrace_web_app_key_performance_xhr",
        "dynatrace_web_app_manual_insertion",
        "dynatrace_web_app_request_errors",
        "dynatrace_web_app_resource_cleanup",
        "dynatrace_web_app_resource_types",
        "dynatrace_web_application",
        "dynatrace_webhook_notification",
        "dynatrace_xmatters_notification"
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
        throw "Kein terraform-provider-dynatrace*.exe gefunden unter $root"
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
        Write-Host "Ressourcen             = keine explizite Liste konfiguriert"
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
    Write-Host "Module (gesamt)        = $total"

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

    Invoke-ResourceExport -ProviderExe $providerExe -ResourceList $Resources
}
catch {
    Write-Error $_
    exit 1
}