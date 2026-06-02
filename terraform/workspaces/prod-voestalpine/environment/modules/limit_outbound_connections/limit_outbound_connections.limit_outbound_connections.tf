resource "dynatrace_limit_outbound_connections" "limit_outbound_connections" {
  allowed_outbound_connections {
    enforced  = true
    host_list = [ "2de157600793e2b6970ace32bd33cc.50.environment.api.powerplatform.com", "voestalpine.live.dynatrace.com", "voestalpine.apps.dynatrace.com", "voestalpine.webhook.office.com", "sso.dynatrace.com", "api.dynatrace.com", "login.microsoftonline.com", "graph.microsoftonline.com" ]
  }
}
