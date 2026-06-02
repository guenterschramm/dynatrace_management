resource "dynatrace_document" "create_a_new_management_zone" {
  name    = "create a new management zone"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "create a new management zone"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "95a486ef-cb31-4573-9b88-7a074c7a01a4",
          "role": "ai",
          "text": "To create a new management zone in Dynatrace, follow these steps:\n\n1. **Authentication**: Obtain an access token with the `WriteConfig` scope. Refer to [Tokens and authentication](https://www.dynatrace.com/support/help/dynatrace-api/basics/dynatrace-api-authentication) for details.\n\n2. **Prepare the Request Body**: Define the management zone configuration in JSON format. Here is an example:\n\n    ```json\n    {\n      \"name\": \"Mainframe\",\n      \"rules\": [\n        {\n          \"type\": \"SERVICE\",\n          \"enabled\": true,\n          \"propagationTypes\": [\"SERVICE_TO_PROCESS_GROUP_LIKE\"],\n          \"conditions\": [\n            {\n              \"key\": { \"attribute\": \"HOST_ARCHITECTURE\" },\n              \"comparisonInfo\": {\n                \"type\": \"OS_ARCHITECTURE\",\n                \"operator\": \"EQUALS\",\n                \"value\": \"ZOS\",\n                \"negate\": false\n              }\n            }\n          ]\n        }\n      ]\n    }\n    ```\n\n3. **Validate the Payload**: Validate the payload before submitting it. A response code of **204** indicates a valid payload.\n\n    ```bash\n    curl -L -X POST 'https://{your-environment-id}.live.dynatrace.com/api/config/v1/managementZones/validator' \\\n    -H 'Authorization: Api-"
        }
      ]
    })
  private = true
}
