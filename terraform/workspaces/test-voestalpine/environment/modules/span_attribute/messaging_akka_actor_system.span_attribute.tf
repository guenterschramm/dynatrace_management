resource "dynatrace_span_attribute" "messaging_akka_actor_system" {
  key     = "messaging.akka.actor.system"
  masking = "NOT_MASKED"
}
