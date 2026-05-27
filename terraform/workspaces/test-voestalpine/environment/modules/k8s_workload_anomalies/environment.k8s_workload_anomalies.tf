resource "dynatrace_k8s_workload_anomalies" "environment" {
  scope = "environment"
  container_restarts {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
      threshold                     = 1
    }
  }
  deployment_stuck {
    enabled = true
    configuration {
      observation_period_in_minutes = 5
      sample_period_in_minutes      = 3
    }
  }
  high_cpu_throttling {
    enabled = false
  }
  high_cpu_usage {
    enabled = false
  }
  high_memory_usage {
    enabled = false
  }
  job_failure_events {
    enabled = true
  }
  not_all_pods_ready {
    enabled = false
  }
  oom_kills {
    enabled = true
  }
  pending_pods {
    enabled = true
    configuration {
      observation_period_in_minutes = 15
      sample_period_in_minutes      = 10
      threshold                     = 1
    }
  }
  pod_backoff_events {
    enabled = true
  }
  pod_eviction_events {
    enabled = true
  }
  pod_preemption_events {
    enabled = true
  }
  pod_stuck_in_terminating {
    enabled = true
    configuration {
      observation_period_in_minutes = 15
      sample_period_in_minutes      = 10
    }
  }
  workload_without_ready_pods {
    enabled = true
    configuration {
      observation_period_in_minutes = 15
      sample_period_in_minutes      = 10
    }
  }
}
