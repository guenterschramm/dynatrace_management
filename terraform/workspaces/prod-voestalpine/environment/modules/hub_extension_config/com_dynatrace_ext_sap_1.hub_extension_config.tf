resource "dynatrace_hub_extension_config" "com_dynatrace_ext_sap_1" {
  name              = "com.dynatrace.ext.sap"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "SAP_ERP_VQG",
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
        "connect_via": "app_server",
        "debug": false,
        "instance": "66",
        "password": "***c5dc6d35e5c10214***",
        "pollAll": false,
        "pollLess": false,
        "rfc": "Per function call",
        "rum": true,
        "server": "vadsvqg.voestalpine.root.local",
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
