resource "dynatrace_metric_metadata" "Job_Avg_Delay" {
  display_name       = "Job Avg Delay"
  metric_id          = "metric-sap.job.avg_delay"
  source_entity_type = "sap:application_server"
  unit               = "MilliSecond"
  dimensions {
    dimension {
      display_name = "SID"
      key          = "sid"
    }
    dimension {
      display_name = "Instance Number"
      key          = "instance_number"
    }
    dimension {
      display_name = "Host"
      key          = "host"
    }
    dimension {
      display_name = "Job Name"
      key          = "job_name"
    }
    dimension {
      display_name = "Job Class"
      key          = "job_class"
    }
    dimension {
      display_name = "Periodic"
      key          = "periodic"
    }
    dimension {
      display_name = "Emergency Mode"
      key          = "emergency_mode"
    }
    dimension {
      display_name = "Target System"
      key          = "btcsysreax"
    }
  }
}
