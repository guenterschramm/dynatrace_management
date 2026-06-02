resource "dynatrace_span_attribute" "db_redis_operation" {
  key     = "db.redis.operation"
  masking = "NOT_MASKED"
}
