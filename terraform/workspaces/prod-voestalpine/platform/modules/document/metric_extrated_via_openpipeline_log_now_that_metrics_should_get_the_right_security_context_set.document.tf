resource "dynatrace_document" "metric_extrated_via_openpipeline_log_now_that_metrics_should_get_the_right_security_context_set" {
  name      = "metric extrated via openpipeline log, now that metrics should get the right security context set"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "metric extrated via openpipeline log, now that metrics should get the right security context set"
        },
        {
          "complete": true,
          "messageToken": "b364eb7d-39b0-4543-99d0-3b30a4049d95",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Re: Security on Metrics - SaaS - Possible?",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Security-on-Metrics-SaaS-Possible/td-p/274384"
            },
            {
              "title": "Parse log lines and extract a metric",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/use-cases/tutorial-log-processing-pipeline"
            },
            {
              "title": "Re: Enrich metric with some host tags using Openpipeline",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Enrich-metric-with-some-host-tags-using-OpenPipeline/td-p/289765"
            },
            {
              "title": "What's new in Dynatrace SaaS version 1.318",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/whats-new/saas/sprint-318"
            }
          ],
          "state": {
            "conversationId": "62b4c7ea-a3a4-4dfe-b4a8-3a250472f230",
            "history": [
              {
                "role": "user",
                "text": "metric extrated via openpipeline log, now that metrics should get the right security context set"
              },
              {
                "role": "ai",
                "text": "To ensure that metrics extracted via OpenPipeline logs have the correct security context set, you can follow these steps:\n\n1. **Set Security Context in OpenPipeline**:  \n   - While configuring the pipeline for metric extraction, you can assign a security context to the metrics. This is done by adding the `dt.security_context` attribute during the metric extraction process.  \n   - For example, in the **Metric extraction** processor, you can define the `dt.security_context` attribute as a custom dimension or field to enforce fine-grained access control.\n\n2. **Use Policies and Boundaries**:  \n   - Create a policy to define access control for the metrics. For example:  \n     ```plaintext\n     ALLOW storage:buckets:read WHERE storage:table-name = \"metrics\";\n     ALLOW storage:metrics:read;\n     ```\n   - Define boundaries for the policy to restrict access based on the security context. For example:  \n     ```plaintext\n     storage:metric.key startsWith \"log.Accounting\";\n     ```\n\n3. **Standardize Naming Conventions**:  \n   - Use a consistent naming convention for metrics and security contexts. For example, prefix metrics with a department or team name (e.g., `log.Accounting.metricName`) to simplify policy management.\n\nBy implementing these steps, you can ensure that the extracted metrics are properly secured and accessible only to authorized users or teams."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To ensure that metrics extracted via OpenPipeline logs have the correct security context set, you can follow these steps:\n\n1. **Set Security Context in OpenPipeline**:  \n   - While configuring the pipeline for metric extraction, you can assign a security context to the metrics. This is done by adding the `dt.security_context` attribute during the metric extraction process.  \n   - For example, in the **Metric extraction** processor, you can define the `dt.security_context` attribute as a custom dimension or field to enforce fine-grained access control.\n\n2. **Use Policies and Boundaries**:  \n   - Create a policy to define access control for the metrics. For example:  \n     ```plaintext\n     ALLOW storage:buckets:read WHERE storage:table-name = \"metrics\";\n     ALLOW storage:metrics:read;\n     ```\n   - Define boundaries for the policy to restrict access based on the security context. For example:  \n     ```plaintext\n     storage:metric.key startsWith \"log.Accounting\";\n     ```\n\n3. **Standardize Naming Conventions**:  \n   - Use a consistent naming convention for metrics and security contexts. For example, prefix metrics with a department or team name (e.g., `log.Accounting.metricName`) to simplify policy management.\n\nBy implementing these steps, you can ensure that the extracted metrics are properly secured and accessible only to authorized users or teams."
        }
      ]
    })
  custom_id = "copilot-9d0b2047-a85a-4512-8601-056992939d8e"
  private   = true
}
