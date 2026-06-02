resource "dynatrace_document" "check_the_dt_security_context_for_a_specific_metric" {
  name      = "check the dt.security_context for a specific metric"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "check the dt.security_context for a specific metric"
        },
        {
          "complete": true,
          "messageToken": "a650da43-08b0-4d26-b675-91b8582ed48a",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Re: Restricting access to Service metrics using security context",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Restricting-access-to-Service-metrics-using-security-context/td-p/274398"
            },
            {
              "title": "Re: Some simple questions/remarks about segments and security context",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Some-simple-questions-remarks-about-segments-and-security/td-p/279133"
            },
            {
              "title": "System event models",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events"
            }
          ],
          "state": {
            "conversationId": "8053104a-1c82-4753-a1bf-36fb9766b95b",
            "history": [
              {
                "role": "user",
                "text": "check the dt.security_context for a specific metric"
              },
              {
                "role": "ai",
                "text": "To check the `dt.security_context` for a specific metric, you need to ensure that the metric is associated with a security context. Here are the key points to consider:\n\n1. **Security Context Availability**: Security context is automatically applied to logs, spans, metrics, and events sent from a host where the security context is configured. However, for services, security context enrichment for metrics in Kubernetes environments is planned for future updates.\n\n2. **Custom Metrics**: Security context is not currently available for custom metrics. However, with upcoming updates to OpenPipeline, ingest and processing pipelines for metrics will allow you to set the security context for custom metrics.\n\n3. **Checking Security Context**: To verify the `dt.security_context` for a specific metric, you can use Dynatrace's data exploration tools such as Notebooks or Dashboards. These tools allow you to query and filter data based on attributes, including `dt.security_context`.\n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To check the `dt.security_context` for a specific metric, you need to ensure that the metric is associated with a security context. Here are the key points to consider:\n\n1. **Security Context Availability**: Security context is automatically applied to logs, spans, metrics, and events sent from a host where the security context is configured. However, for services, security context enrichment for metrics in Kubernetes environments is planned for future updates.\n\n2. **Custom Metrics**: Security context is not currently available for custom metrics. However, with upcoming updates to OpenPipeline, ingest and processing pipelines for metrics will allow you to set the security context for custom metrics.\n\n3. **Checking Security Context**: To verify the `dt.security_context` for a specific metric, you can use Dynatrace's data exploration tools such as Notebooks or Dashboards. These tools allow you to query and filter data based on attributes, including `dt.security_context`.\n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
        },
        {
          "role": "user",
          "text": "i need to know which security context a specific timeseries has"
        },
        {
          "complete": true,
          "messageToken": "898893c1-bc7e-450e-b1ad-15caab1724aa",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "System event models",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events"
            },
            {
              "title": "Set up Grail permissions for Metrics",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics/metrics-security-context"
            },
            {
              "title": "Re: Restricting access to Service metrics using security context",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Restricting-access-to-Service-metrics-using-security-context/td-p/274398"
            },
            {
              "title": "Re: Create security context",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Create-security-context/td-p/289218"
            }
          ],
          "state": {
            "conversationId": "8053104a-1c82-4753-a1bf-36fb9766b95b",
            "history": [
              {
                "role": "user",
                "text": "check the dt.security_context for a specific metric"
              },
              {
                "role": "ai",
                "text": "To check the `dt.security_context` for a specific metric, you need to ensure that the metric is associated with a security context. Here are the key points to consider:\n\n1. **Security Context Availability**: Security context is automatically applied to logs, spans, metrics, and events sent from a host where the security context is configured. However, for services, security context enrichment for metrics in Kubernetes environments is planned for future updates.\n\n2. **Custom Metrics**: Security context is not currently available for custom metrics. However, with upcoming updates to OpenPipeline, ingest and processing pipelines for metrics will allow you to set the security context for custom metrics.\n\n3. **Checking Security Context**: To verify the `dt.security_context` for a specific metric, you can use Dynatrace's data exploration tools such as Notebooks or Dashboards. These tools allow you to query and filter data based on attributes, including `dt.security_context`.\n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
              },
              {
                "role": "user",
                "text": "i need to know which security context a specific timeseries has"
              },
              {
                "role": "ai",
                "text": "To determine the `dt.security_context` associated with a specific timeseries metric, follow these steps:\n\n1. **Use Dynatrace Notebooks**: Open the **Notebooks** feature in Dynatrace.\n2. **Run a DQL Query**: Execute a query to filter the timeseries metric and include the `dt.security_context` attribute. For example:\n   ```plaintext\n   timeseries median(http.server.request.duration_bucket), by:{http.route, dt.security_context} \n   | filter matchesValue(dt.security_context, \"YourSecurityContextValue\")\n   ```\n   Replace `http.server.request.duration_bucket` with the specific metric key and `\"YourSecurityContextValue\"` with the security context value you want to check.\n\nThis query will display the timeseries data grouped by the `dt.security_context` attribute, allowing you to verify the associated security context for the metric."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To determine the `dt.security_context` associated with a specific timeseries metric, follow these steps:\n\n1. **Use Dynatrace Notebooks**: Open the **Notebooks** feature in Dynatrace.\n2. **Run a DQL Query**: Execute a query to filter the timeseries metric and include the `dt.security_context` attribute. For example:\n   ```plaintext\n   timeseries median(http.server.request.duration_bucket), by:{http.route, dt.security_context} \n   | filter matchesValue(dt.security_context, \"YourSecurityContextValue\")\n   ```\n   Replace `http.server.request.duration_bucket` with the specific metric key and `\"YourSecurityContextValue\"` with the security context value you want to check.\n\nThis query will display the timeseries data grouped by the `dt.security_context` attribute, allowing you to verify the associated security context for the metric."
        }
      ]
    })
  custom_id = "copilot-83970436-794d-4be8-806a-11379dc4b229"
  private   = true
}
