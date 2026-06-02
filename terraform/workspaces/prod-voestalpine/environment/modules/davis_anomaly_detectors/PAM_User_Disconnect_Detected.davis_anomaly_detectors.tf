resource "dynatrace_davis_anomaly_detectors" "PAM_User_Disconnect_Detected" {
  description = "PAM User Disconnect"
  enabled     = true
  source      = "Davis Anomaly Detection"
  title       = "PAM User Disconnect Detected"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value = "timeseries sum(pam.disconnects,default:0), nonempty:true, by: {host.name,  dt.source_entity}"
      }
      analyzer_input_field {
        key   = "alertOnMissingData"
        value = "false"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "5"
      }
      analyzer_input_field {
        key   = "threshold"
        value = "0"
      }
      analyzer_input_field {
        key   = "dealertingSamples"
        value = "5"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "60"
      }
      analyzer_input_field {
        key   = "alertCondition"
        value = "ABOVE"
      }
    }
  }
  event_template {
    properties {
      property {
        key   = "dt.source_entity"
        value = "{dims:dt.source_entity}"
      }
      property {
        key   = "event.type"
        value = "CUSTOM_ALERT"
      }
      property {
        key   = "event.description"
        value =<<-EOT
          **PAM User Disconnect:**
          An anomaly was detected on {dims:host.name}. Within a 60 minute timeframe, {violating_samples} disconnects have occured, max allowed are {threshold}.
        EOT
      }
      property {
        key   = "event.name"
        value = "PAM User Disconnect"
      }
    }
  }
  execution_settings {
  }
}
