resource "dynatrace_document" "update_the_dt_security_context_of_a_service" {
  name      = "update the dt.security_context of a service"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "update the dt.security_context of a service"
        },
        {
          "complete": true,
          "messageToken": "7dcbe9c1-6bdc-4e98-b7e2-73aeabbfb433",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "System event models",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events"
            }
          ],
          "state": {
            "conversationId": "7f39027e-033b-4592-b8a7-373a461f2959",
            "history": [
              {
                "role": "user",
                "text": "update the dt.security_context of a service"
              },
              {
                "role": "ai",
                "text": "It is not possible to directly update the `dt.security_context` of a service in Dynatrace. The `dt.security_context` is a predefined attribute that must conform to specific values as outlined in the Dynatrace documentation. If you need to modify or configure security-related settings, you may need to review the service's configuration or consult the Dynatrace documentation for supported options.\n\nFor more details, you can refer to the [System Event Models documentation](https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events)."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "It is not possible to directly update the `dt.security_context` of a service in Dynatrace. The `dt.security_context` is a predefined attribute that must conform to specific values as outlined in the Dynatrace documentation. If you need to modify or configure security-related settings, you may need to review the service's configuration or consult the Dynatrace documentation for supported options.\n\nFor more details, you can refer to the [System Event Models documentation](https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events)."
        },
        {
          "role": "user",
          "text": "service is created by otel "
        },
        {
          "complete": true,
          "messageToken": "509a1e91-55f1-4450-8869-a51eb4e8f97f",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Send OpenTelemetry data to Dynatrace",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/send-opentelemetry-data-to-dynatrace/"
            },
            {
              "title": "Re: Otel entites in Dynatrace",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Otel-entites-in-Dynatrace/td-p/248449"
            },
            {
              "title": "KubeCon EU 2025: Reflections from my sixth KubeCon",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/kubecon-eu-2025/"
            },
            {
              "title": "Re: Splitting a Unified Service into Multiple Services Based on OTEL Attributes",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Splitting-a-Unified-Service-into-Multiple-Services-Based-on-OTel/td-p/278234"
            }
          ],
          "state": {
            "conversationId": "7f39027e-033b-4592-b8a7-373a461f2959",
            "history": [
              {
                "role": "user",
                "text": "update the dt.security_context of a service"
              },
              {
                "role": "ai",
                "text": "It is not possible to directly update the `dt.security_context` of a service in Dynatrace. The `dt.security_context` is a predefined attribute that must conform to specific values as outlined in the Dynatrace documentation. If you need to modify or configure security-related settings, you may need to review the service's configuration or consult the Dynatrace documentation for supported options.\n\nFor more details, you can refer to the [System Event Models documentation](https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events)."
              },
              {
                "role": "user",
                "text": "service is created by otel "
              },
              {
                "role": "ai",
                "text": "Dynatrace automatically assigns the `dt.security_context` to services based on the metadata and attributes provided by OpenTelemetry spans. However, this attribute is not directly configurable or modifiable by users. \n\nIf you need to influence the `dt.security_context`, you can focus on ensuring that the OpenTelemetry spans include accurate and relevant metadata, such as `service.name`, `service.namespace`, and other attributes that Dynatrace uses for service detection and security context assignment. For more advanced customization, consider submitting a product idea to Dynatrace for additional configurability."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Dynatrace automatically assigns the `dt.security_context` to services based on the metadata and attributes provided by OpenTelemetry spans. However, this attribute is not directly configurable or modifiable by users. \n\nIf you need to influence the `dt.security_context`, you can focus on ensuring that the OpenTelemetry spans include accurate and relevant metadata, such as `service.name`, `service.namespace`, and other attributes that Dynatrace uses for service detection and security context assignment. For more advanced customization, consider submitting a product idea to Dynatrace for additional configurability."
        }
      ]
    })
  custom_id = "copilot-d486de02-cfdc-4833-81cf-55a8922c8ac8"
  private   = true
}
