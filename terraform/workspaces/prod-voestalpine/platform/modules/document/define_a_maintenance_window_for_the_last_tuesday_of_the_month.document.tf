resource "dynatrace_document" "define_a_maintenance_window_for_the_last_tuesday_of_the_month" {
  name    = "define a maintenance window for the last tuesday of the month"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "define a maintenance window for the last tuesday of the month"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "31fa4412-4ffc-4559-b928-b1849a38f874",
          "role": "ai",
          "text": "To define a maintenance window for the last Tuesday of the month, you can use the following parameters:\n\n1. **General Properties**:\n   - **Name**: Provide a name for the maintenance window.\n   - **Description**: Optionally, provide a description.\n   - **Maintenance type**: `PLANNED`\n   - **Problem detection and alerting**: Choose one of the following:\n     - `DETECT_PROBLEMS_AND_ALERT`\n     - `DETECT_PROBLEMS_DONT_ALERT`\n     - `DONT_DETECT_PROBLEMS`\n   - **Disable synthetic monitor execution**: `true` or `false`\n\n2. **Schedule**:\n   - **Recurrence**: `MONTHLY`\n   - **Monthly Recurrence**:\n     - **Day of month**: `-1` (indicating the last day of the month)\n     - **Time window**: Specify the start and end time.\n     - **Recurrence range**: Specify the start and end date.\n\n3. **Filters**: Optionally, add filters to limit the scope of maintenance to select entities.\n\nExample JSON model for the request body:\n\n```json\n{\n  \"generalProperties\": {\n    \"name\": \"Monthly Last Tuesday Maintenance\",\n    \"description\": \"Maintenance window for the last Tuesday of each month\",\n    \"maintenanceType\": \"PLANNED\",\n    \"suppression\": \"DETECT_PROBLEMS"
        },
        {
          "role": "user",
          "text": "create a maintenance window via api"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "75506f3e-ee5d-490d-8be7-e1369fd3eba1",
          "role": "ai",
          "text": "To create a maintenance window via the Dynatrace API, follow these steps:\n\n1. **Authentication**: Obtain an access token with the `WriteConfig` scope. Refer to [Tokens and authentication](https://www.dynatrace.com/support/help/dynatrace-api/basics/dynatrace-api-authentication) for details.\n\n2. **Prepare the Request Body**: Create a JSON object with the required parameters for the maintenance window. Example:\n\n```json\n{\n  \"name\": \"Main app update\",\n  \"description\": \"Deployment of a new version of the main application\",\n  \"type\": \"PLANNED\",\n  \"suppression\": \"DONT_DETECT_PROBLEMS\",\n  \"scope\": {\n    \"entities\": [\"APPLICATION-61A89B82DF26BCFC\"],\n    \"matches\": [\n      {\n        \"type\": \"HOST\",\n        \"tags\": [\n          {\n            \"context\": \"CONTEXTLESS\",\n            \"key\": \"MainApp\"\n          }\n        ],\n        \"tagCombination\": \"OR\"\n      }\n    ]\n  },\n  \"schedule\": {\n    \"recurrenceType\": \"ONCE\",\n    \"start\": \"2019-07-31 08:00\",\n    \"end\": \"2019-07-31 13:00\",\n    \"zoneId\": \"Europe/Vienna\"\n  }\n}\n```\n\n3. **Validate the Payload**: Option"
        }
      ]
    })
  private = true
}
