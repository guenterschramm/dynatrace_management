resource "dynatrace_generic_setting" "app_dynatrace_biz_carbon_cost-and-carbon-settings" {
  schema = "app:dynatrace.biz.carbon:cost-and-carbon-settings"
  scope  = "environment"
  value  = jsonencode({
      "businessHealth": {
        "event": {
          "attribute": "energy.measurement.total",
          "id": {
            "name": "carbon.measurement",
            "provider": "dynatrace.biz.carbon"
          }
        }
      },
      "customDatacenterOverrides": [],
      "idlingThresholds": {
        "cpu": {
          "unit": "%",
          "value": 3
        },
        "memory": {
          "unit": "%",
          "value": 10
        },
        "networkReceiving": {
          "unit": "bytes/s",
          "value": 100000
        },
        "networkTransmitting": {
          "unit": "bytes/s",
          "value": 120000
        }
      },
      "sizingThresholds": {
        "cpu": {
          "unit": "%",
          "value": 30
        },
        "memory": {
          "unit": "%",
          "value": 50
        },
        "networkReceiving": {
          "unit": "bytes/s",
          "value": 150000
        },
        "networkTransmitting": {
          "unit": "bytes/s",
          "value": 180000
        }
      },
      "workflowId": "9f1eb5e4-8733-496e-8d76-81d7f2e1e60c"
    })
}
