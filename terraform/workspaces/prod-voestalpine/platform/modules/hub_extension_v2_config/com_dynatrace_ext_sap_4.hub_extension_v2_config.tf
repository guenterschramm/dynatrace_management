resource "dynatrace_hub_extension_v2_config" "com_dynatrace_ext_sap_4" {
  name  = "com.dynatrace.ext.sap"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "SAP_ERP_Q",
      "enabled": false,
      "featureSets": [
        "Dialog Metrics",
        "Task Metrics",
        "Job Metrics",
        "RFC Metrics",
        "Threshold Metrics",
        "Application Server Instance Metrics"
      ],
      "pythonRemote": {
        "applicationID": "4d64d21b-a285-41f0-bdea-515de8b9a4dc",
        "capUser": true,
        "capUserRFC": false,
        "clientno": "100",
        "connect_via": "app_server",
        "debug": false,
        "instance": "11",
        "password": "***5faa222365df9313***",
        "pollAll": false,
        "pollLess": false,
        "rfc": "Per function call",
        "rum": true,
        "server": "vadsvqe11.voestalpine.root.local",
        "tasks": [],
        "timeoutMin": 25,
        "useHostName": true,
        "useTerminalForIp": true,
        "username": "Z_DYNATRACE",
        "workfolder": "/tmp/SAPJCO"
      },
      "version": "1.7.4"
    })
}
