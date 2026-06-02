resource "dynatrace_document" "rest_api_request_to_create_a_new_url_mapping" {
  name    = "rest api request to create a new url mapping"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "rest api request to create a new url mapping"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "5f95c73d-19d8-46f8-b176-9ef8170f0025",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Request naming API - POST a new request naming rule — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/service-api/request-naming-api/post-new-rule"
            },
            {
              "title": "Create a new request naming rule — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/service-api/request-naming-api/create-a-new-request-naming-rule"
            },
            {
              "title": "Tokens API v1 - POST a new token — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/environment-api/tokens-v1/post-new-token"
            }
          ],
          "state": {
            "conversationId": "0f74f3ba-55dd-4eae-8f89-7d110c4f50e3",
            "history": [
              {
                "role": "user",
                "text": "rest api request to create a new url mapping"
              },
              {
                "role": "ai",
                "text": "To create a new URL mapping using the Dynatrace API, follow these steps:\n\n1. **Endpoint**: `POST https://{your-environment-id}.live.dynatrace.com/api/config/v1/service/requestNaming`\n2. **Authentication**: You need an access token with `WriteConfig` scope.\n3. **Request Parameters**:\n   - **position**: Order of the new request naming rule (`PREPEND` or `APPEND`).\n   - **body**: JSON body containing parameters of the new request naming rule.\n\n4. **Request Body Example**:\n   ```json\n   {\n     \"conditions\": [\n       {\n         \"attribute\": \"WEBREQUEST_URL_PATH\",\n         \"comparisonInfo\": {\n           \"caseSensitive\": false,\n           \"comparison\": \"BEGINS_WITH\",\n           \"negate\": false,\n           \"type\": \"STRING\",\n           \"value\": \"/url\"\n         }\n       }\n     ],\n     \"enabled\": true,\n     \"namingPattern\": \"renamed request\"\n   }\n   ```\n\n5. **Response**:\n   - **201**: Success. The request naming has been created. Response contains the new service's ID.\n   - **400**: Failed. The input is invalid.\n\nMake sure to validate the payload before submitting it with an actual request. A response code of **204** indicates a valid payload."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To create a new URL mapping using the Dynatrace API, follow these steps:\n\n1. **Endpoint**: `POST https://{your-environment-id}.live.dynatrace.com/api/config/v1/service/requestNaming`\n2. **Authentication**: You need an access token with `WriteConfig` scope.\n3. **Request Parameters**:\n   - **position**: Order of the new request naming rule (`PREPEND` or `APPEND`).\n   - **body**: JSON body containing parameters of the new request naming rule.\n\n4. **Request Body Example**:\n   ```json\n   {\n     \"conditions\": [\n       {\n         \"attribute\": \"WEBREQUEST_URL_PATH\",\n         \"comparisonInfo\": {\n           \"caseSensitive\": false,\n           \"comparison\": \"BEGINS_WITH\",\n           \"negate\": false,\n           \"type\": \"STRING\",\n           \"value\": \"/url\"\n         }\n       }\n     ],\n     \"enabled\": true,\n     \"namingPattern\": \"renamed request\"\n   }\n   ```\n\n5. **Response**:\n   - **201**: Success. The request naming has been created. Response contains the new service's ID.\n   - **400**: Failed. The input is invalid.\n\nMake sure to validate the payload before submitting it with an actual request. A response code of **204** indicates a valid payload."
        }
      ]
    })
  private = true
}
