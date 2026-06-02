resource "dynatrace_span_attribute" "messaging_akka_actor_type" {
  key     = "messaging.akka.actor.type"
  masking = "NOT_MASKED"
}
