resource "dynatrace_span_attribute" "messaging_akka_actor_kind" {
  key     = "messaging.akka.actor.kind"
  masking = "NOT_MASKED"
}
