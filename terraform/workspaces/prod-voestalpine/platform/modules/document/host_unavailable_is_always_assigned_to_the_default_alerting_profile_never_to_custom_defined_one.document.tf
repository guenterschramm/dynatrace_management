resource "dynatrace_document" "host_unavailable_is_always_assigned_to_the_default_alerting_profile_never_to_custom_defined_one" {
  name    = "host unavailable is always assigned to the default alerting profile, never to custom defined one"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "host unavailable is always assigned to the default alerting profile, never to custom defined one"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "433361b2-dc20-46bc-9db2-4b78b194f66f",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Settings API - Problem alerting profiles schema table — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/environment-api/settings/schemas/builtin-alerting-profile"
            },
            {
              "title": "Alerting profiles API - PUT a profile — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/alerting-profiles-api/put-profile"
            },
            {
              "title": "Alerting profiles API - POST a profile — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/alerting-profiles-api/post-profile"
            }
          ],
          "state": {
            "conversationId": "13a4a5d2-9f0b-45fb-abbe-357ddc07bdd1",
            "history": [
              {
                "role": "user",
                "text": "host unavailable is always assigned to the default alerting profile, never to custom defined one"
              },
              {
                "role": "ai",
                "text": "This statement is incorrect. The \"Host unavailable\" problem can be assigned to custom-defined alerting profiles based on the configuration of severity rules and event filters. Here are the relevant details:\n\n1. **Severity Rules**: You can define severity rules in your custom alerting profile to include the \"AVAILABILITY\" severity level, which covers \"Host unavailable\" problems.\n2. **Event Filters**: You can set up event filters to include or exclude specific predefined events, such as \"HOST_OF_SERVICE_UNAVAILABLE\".\n\nBy configuring these settings in your custom alerting profile, you can ensure that \"Host unavailable\" problems are assigned to it."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "This statement is incorrect. The \"Host unavailable\" problem can be assigned to custom-defined alerting profiles based on the configuration of severity rules and event filters. Here are the relevant details:\n\n1. **Severity Rules**: You can define severity rules in your custom alerting profile to include the \"AVAILABILITY\" severity level, which covers \"Host unavailable\" problems.\n2. **Event Filters**: You can set up event filters to include or exclude specific predefined events, such as \"HOST_OF_SERVICE_UNAVAILABLE\".\n\nBy configuring these settings in your custom alerting profile, you can ensure that \"Host unavailable\" problems are assigned to it."
        }
      ]
    })
  private = true
}
