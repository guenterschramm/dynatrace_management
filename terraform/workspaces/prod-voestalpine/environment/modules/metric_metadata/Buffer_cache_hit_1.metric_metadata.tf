resource "dynatrace_metric_metadata" "Buffer_cache_hit_1" {
  description        = "Percentage of pages found in the buffer cache without having to read from disk"
  display_name       = "Buffer cache hit"
  metric_id          = "metric-sql-server.local.buffers.cacheHitRatio"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "score"
  }
}
