resource "dynatrace_k8s_node_anomalies" "environment" {
  scope = "environment"
  cpu_requests_saturation {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
      threshold                     = 90
    }
  }
  memory_requests_saturation {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
      threshold                     = 90
    }
  }
  node_problematic_condition {
    enabled = false
  }
  pods_saturation {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
      threshold                     = 90
    }
  }
  readiness_issues {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
    }
  }
}
