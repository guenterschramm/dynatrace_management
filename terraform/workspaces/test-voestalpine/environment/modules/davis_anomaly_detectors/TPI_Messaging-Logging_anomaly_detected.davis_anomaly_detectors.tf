resource "dynatrace_davis_anomaly_detectors" "TPI_Messaging-Logging_anomaly_detected" {
  description = ""
  enabled     = true
  source      = "Custom Alerts"
  title       = "TPI Messaging - Logging anomaly detected"
  analyzer {
    name = "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
    input {
      analyzer_input_field {
        key   = "query.expression"
        value =<<-EOT
          timeseries { sum(tpi_messaging.loglevel.counter)}, filter: (loglevel != "NONE" and loglevel != "DEBUG" and loglevel != "INFO"), by: { host.name, loglevel, log.source, dt.source_entity }
        EOT
      }
      analyzer_input_field {
        key   = "alertOnMissingData"
        value = "false"
      }
      analyzer_input_field {
        key   = "violatingSamples"
        value = "3"
      }
      analyzer_input_field {
        key   = "numberOfSignalFluctuations"
        value = "5"
      }
      analyzer_input_field {
        key   = "dealertingSamples"
        value = "5"
      }
      analyzer_input_field {
        key   = "slidingWindow"
        value = "5"
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
          ❗**Alert description:**
          An anomaly was detected on {metricname}. Within the sliding window, {violating_samples} violation samples were detected that were {alert_condition} the threshold of {threshold}.
        EOT
      }
      property {
        key   = "event.name"
        value = "TPI Messaging - A log source is showing unusual high logging activity"
      }
    }
  }
  execution_settings {
  }
}
