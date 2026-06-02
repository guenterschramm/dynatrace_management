resource "dynatrace_document" "can_the_oneagent_receive_otel_data" {
  name      = "can the oneagent receive otel data"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "can the oneagent receive otel data"
        },
        {
          "complete": true,
          "messageToken": "657ea3f0-fe56-4cdf-87dd-3b46ba0b6cef",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Re: Using OneAgent as an OTel generator",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Using-OneAgent-as-an-OTel-generator/td-p/245894"
            },
            {
              "title": "Re: How to relate OTEL metrics to entity",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/How-to-relate-OTel-metrics-to-entity/td-p/292991"
            },
            {
              "title": "Re: Need advice - One Agent Installation",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Need-advice-One-Agent-Installation/td-p/224212"
            },
            {
              "title": "Re: what happened with the oneAgent SDK",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/What-happened-with-the-OneAgent-SDK/td-p/254189"
            }
          ],
          "state": {
            "conversationId": "707412d3-89c1-492e-bbc7-fa1f6908ba5a",
            "history": [
              {
                "role": "user",
                "text": "can the oneagent receive otel data"
              },
              {
                "role": "ai",
                "text": "Yes, the Dynatrace OneAgent can receive OpenTelemetry (OTel) data. OneAgent is capable of ingesting OTel traces and metrics, allowing you to integrate custom instrumentation or data collected via OTel into Dynatrace. \n\nFor traces, you can use the OTLP (OpenTelemetry Protocol) export endpoint provided by Dynatrace. For metrics, you can associate OTel metrics with specific entities in Dynatrace by adding entity attributes in the OTel resource metadata, such as `dt.entity.process_group_instance` or `dt.entity.host`. For more details, refer to the [Dynatrace documentation on OpenTelemetry](https://www.dynatrace.com/support/help/extend-dynatrace/opentelemetry/getting-started/otlp-export)."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Yes, the Dynatrace OneAgent can receive OpenTelemetry (OTel) data. OneAgent is capable of ingesting OTel traces and metrics, allowing you to integrate custom instrumentation or data collected via OTel into Dynatrace. \n\nFor traces, you can use the OTLP (OpenTelemetry Protocol) export endpoint provided by Dynatrace. For metrics, you can associate OTel metrics with specific entities in Dynatrace by adding entity attributes in the OTel resource metadata, such as `dt.entity.process_group_instance` or `dt.entity.host`. For more details, refer to the [Dynatrace documentation on OpenTelemetry](https://www.dynatrace.com/support/help/extend-dynatrace/opentelemetry/getting-started/otlp-export)."
        }
      ]
    })
  custom_id = "copilot-bdb600c5-d7ab-49f4-a7d7-1aa7bf5a3ba4"
  private   = true
}
