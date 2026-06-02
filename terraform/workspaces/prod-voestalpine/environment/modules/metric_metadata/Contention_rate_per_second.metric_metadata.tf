resource "dynatrace_metric_metadata" "Contention_rate_per_second" {
  description        = "Rate at which threads in the runtime attempt to acquire a managed lock unsuccessfully. Managed locks can be acquired in many ways; by the \"lock\" statement in C# or by calling System.Monitor.Enter or by using MethodImplOptions.Synchronized custom attribute."
  display_name       = "Contention rate per second"
  metric_id          = "metric-dotnet.locksandthreads.contentionratepersec"
  source_entity_type = "wmi:dotnet_process"
  tags               = [ "dotnet", "windows" ]
  unit               = "PerSecond"
}
