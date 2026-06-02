resource "dynatrace_document" "how_can_I_get_a_selector_for_a_user_tag" {
  name    = "how can I get a selector for a user tag"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "how can I get a selector for a user tag"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "0965fbb7-7fe3-4e0f-b5a6-3a8cb10095e0",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Metrics API - Metric selector — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/environment-api/metric-v2/metric-selector"
            }
          ],
          "state": {
            "conversationId": "53c69ee0-4871-4939-88b8-436d0c589b41",
            "history": [
              {
                "role": "user",
                "text": "how can I get a selector for a user tag"
              },
              {
                "role": "ai",
                "text": "To get a selector for a user tag, you can use the entity selector with the tag condition. Here is an example:\n\n```plaintext\nentitySelector(\"type(~\"HOST~\"),tag(~\"yourTagName~\")\")\n```\n\nReplace `yourTagName` with the actual tag name you want to use. This selector will filter entities of type `HOST` that have the specified tag."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To get a selector for a user tag, you can use the entity selector with the tag condition. Here is an example:\n\n```plaintext\nentitySelector(\"type(~\"HOST~\"),tag(~\"yourTagName~\")\")\n```\n\nReplace `yourTagName` with the actual tag name you want to use. This selector will filter entities of type `HOST` that have the specified tag."
        }
      ]
    })
  private = true
}
