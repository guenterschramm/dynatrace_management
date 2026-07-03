resource "dynatrace_hub_extension_v2_config" "com_dynatrace_ext_sap_2" {
  name  = "com.dynatrace.ext.sap"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "SAP_ERP_VPR",
      "enabled": false,
      "featureSets": [
        "Job Metrics",
        "Task Metrics",
        "Dialog Metrics",
        "default",
        "Application Server Instance Metrics",
        "Threshold Metrics",
        "RFC Metrics"
      ],
      "pythonRemote": {
        "applicationID": "4d64d21b-a285-41f0-bdea-515de8b9a4dc",
        "capUser": true,
        "capUserRFC": false,
        "clientno": "100",
        "connect_via": "message_server",
        "debug": false,
        "msgroup": "VPR",
        "mshost": "vadsvprscs.voestalpine.root.local",
        "msport": "8130",
        "mssysname": "VPR",
        "password": "***00615d14ba98b813***",
        "pollAll": true,
        "pollLess": false,
        "rfc": "Per function call",
        "rum": true,
        "tasks": [],
        "timeoutMin": 25,
        "useTerminalForIp": true,
        "username": "Z_DYNATRACE",
        "workfolder": "/tmp/SAPJCO"
      },
      "version": "1.7.4"
    })
}
