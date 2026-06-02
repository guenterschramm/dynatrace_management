resource "dynatrace_span_attribute" "db_memcached_operation" {
  key     = "db.memcached.operation"
  masking = "NOT_MASKED"
}
