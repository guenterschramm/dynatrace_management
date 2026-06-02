resource "dynatrace_span_attribute" "messaging_akka_actor_path" {
  key     = "messaging.akka.actor.path"
  masking = "NOT_MASKED"
}
