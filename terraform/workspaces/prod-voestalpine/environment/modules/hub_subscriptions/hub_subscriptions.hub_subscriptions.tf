resource "dynatrace_hub_subscriptions" "hub_subscriptions" {
  token_subscriptions {
    token_subscription {
      name    = "New AWS Cloud Platform Monitoring Preview"
      enabled = true
      token   = "9cd2e7c2-4633-4fd3-8a3c-4783df8e076e"
    }
  }
}
