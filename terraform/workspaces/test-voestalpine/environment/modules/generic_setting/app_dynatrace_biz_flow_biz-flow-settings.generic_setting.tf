resource "dynatrace_generic_setting" "app_dynatrace_biz_flow_biz-flow-settings" {
  schema = "app:dynatrace.biz.flow:biz-flow-settings"
  scope  = "environment"
  value  = jsonencode({
      "analysisCustomLabel": "Import Runs",
      "analysisType": "other",
      "connections": [
        {
          "id": "d6d6a0b4-3d2f-4ce6-b093-742ff1b366fd__4431c909-0045-45f4-8d29-80b573b79d97",
          "source": "d6d6a0b4-3d2f-4ce6-b093-742ff1b366fd",
          "target": "4431c909-0045-45f4-8d29-80b573b79d97"
        }
      ],
      "isDefaultQueryLimitIgnored": false,
      "isSmartscapeTopologyEnabled": false,
      "kpiCalculation": "sum",
      "kpiEvent": {
        "name": "com.voestalpine.business.pdwh",
        "provider": "pdwh_importer"
      },
      "kpiLabel": "Imported Lines",
      "name": "Untitled flow",
      "steps": [
        {
          "events": [
            {
              "id": "provider:pdwh_importer-event:com.voestalpine.business.pdwh",
              "isDisabled": false,
              "isError": false,
              "name": "com.voestalpine.business.pdwh",
              "provider": "pdwh_importer"
            }
          ],
          "id": "d6d6a0b4-3d2f-4ce6-b093-742ff1b366fd",
          "isRoot": true,
          "name": "Import"
        },
        {
          "events": [
            {
              "id": "provider:unknown-event:unknown",
              "isDisabled": false,
              "isError": false,
              "name": "unknown",
              "provider": "unknown"
            }
          ],
          "id": "4431c909-0045-45f4-8d29-80b573b79d97",
          "name": "Step 2"
        }
      ],
      "version": 11
    })
}
