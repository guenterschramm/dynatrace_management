resource "dynatrace_automation_workflow" "Cost_Carbon_Optimization_Calculation" {
  description            = "Calculate costs and co2e"
  type                   = "STANDARD"
  actor                  = "db1a0258-d161-4101-9888-7c15a809a5bf"
  # guide                = ""
  hourly_execution_limit = 1000
  input                  = jsonencode({})
  # is_deployed          = true
  owner                  = "db1a0258-d161-4101-9888-7c15a809a5bf"
  owner_type             = "USER"
  private                = false
  title                  = "Cost & Carbon Optimization: Calculation"
  tasks {
    task {
      name        = "cost_carbon_calculation"
      description = "Calculates host costs and translates host utilization metrics into a CO2 equivalent (CO2e)."
      action      = "dynatrace.biz.carbon:v4-calculate-cost-and-carbon"
      retry {
        count                       = "5"
        delay                       = "30"
        failed_loop_iterations_only = true
      }
    }
  }
  trigger {
    schedule {
      active = true
      filter_parameters {
        earliest_start      = "2025-12-16"
        earliest_start_time = "00:00"
      }
      trigger {
        cron = "0,30 * * * *"
      }
    }
  }
}
