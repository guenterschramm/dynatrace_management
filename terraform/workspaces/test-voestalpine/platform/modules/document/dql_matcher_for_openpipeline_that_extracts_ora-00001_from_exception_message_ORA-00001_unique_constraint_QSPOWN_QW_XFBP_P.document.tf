resource "dynatrace_document" "dql_matcher_for_openpipeline_that_extracts_ora-00001_from_exception_message_ORA-00001_unique_constraint_QSPOWN_QW_XFBP_P" {
  name      =<<-EOT
    dql matcher for openpipeline that extracts "ora-00001" from "exception.message": "ORA-00001: unique constraint (QSPOWN.QW_XFBP_P
  EOT
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "dql matcher for openpipeline that extracts \"ora-00001\" from \"exception.message\": \"ORA-00001: unique constraint (QSPOWN.QW_XFBP_PK) violated\\n\","
        },
        {
          "complete": true,
          "messageToken": "7a8bfafd-6acf-454f-bdd1-aa38a9dbf0d0",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "DQL matcher in OpenPipeline",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/reference/dql/dql-matcher-in-openpipeline"
            },
            {
              "title": "Conversion to DQL for Logs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/logs-upgrade/lma-dql-conversion"
            },
            {
              "title": "DQL matcher in logs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-classic-log-processing/lma-log-processing-matcher"
            }
          ],
          "state": {
            "conversationId": "ad3d6644-a169-4e29-9361-bd3f5ec3d3d1",
            "history": [
              {
                "role": "user",
                "text": "dql matcher for openpipeline that extracts \"ora-00001\" from \"exception.message\": \"ORA-00001: unique constraint (QSPOWN.QW_XFBP_PK) violated\\n\","
              },
              {
                "role": "ai",
                "text": "To extract records containing the phrase \"ORA-00001\" from the `exception.message` attribute using a DQL matcher in OpenPipeline, you can use the `matchesPhrase` function. Here's how it works:\n\n### Example:\n```plaintext\nmatchesPhrase(exception.message, \"ORA-00001\")\n```\n\n### Explanation:\n- **`matchesPhrase`**: Filters records containing the specified phrase.\n- **`exception.message`**: The attribute where the search is performed.\n- **`\"ORA-00001\"`**: The phrase to be matched within the attribute.\n\nThis function performs a case-insensitive search for the exact phrase \"ORA-00001\" in the `exception.message` attribute and returns only the matching records.\n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To extract records containing the phrase \"ORA-00001\" from the `exception.message` attribute using a DQL matcher in OpenPipeline, you can use the `matchesPhrase` function. Here's how it works:\n\n### Example:\n```plaintext\nmatchesPhrase(exception.message, \"ORA-00001\")\n```\n\n### Explanation:\n- **`matchesPhrase`**: Filters records containing the specified phrase.\n- **`exception.message`**: The attribute where the search is performed.\n- **`\"ORA-00001\"`**: The phrase to be matched within the attribute.\n\nThis function performs a case-insensitive search for the exact phrase \"ORA-00001\" in the `exception.message` attribute and returns only the matching records.\n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
        },
        {
          "role": "user",
          "text": "extract just the ORA-00001: unique constraint and truncate the rest"
        },
        {
          "complete": true,
          "messageToken": "6dac949c-4e2d-4127-9073-77071487c359",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Classic Environment V2 | Dynatrace Developer",
              "type": "Developer Portal",
              "url": "https://developer.dynatrace.com/develop/sdks/client-classic-environment-v2/"
            },
            {
              "title": "Classic Environment V2 | Dynatrace Developer",
              "type": "Developer Portal",
              "url": "https://developer.dynatrace.com/develop/sdks/client-classic-environment-v2/v5/"
            },
            {
              "title": "Classic Environment V2 | Dynatrace Developer",
              "type": "Developer Portal",
              "url": "https://developer.dynatrace.com/develop/sdks/client-classic-environment-v2/v6/"
            },
            {
              "title": "Classic Environment V2 | Dynatrace Developer",
              "type": "Developer Portal",
              "url": "https://developer.dynatrace.com/develop/sdks/client-classic-environment-v2/v4/"
            }
          ],
          "state": {
            "conversationId": "ad3d6644-a169-4e29-9361-bd3f5ec3d3d1",
            "history": [
              {
                "role": "user",
                "text": "dql matcher for openpipeline that extracts \"ora-00001\" from \"exception.message\": \"ORA-00001: unique constraint (QSPOWN.QW_XFBP_PK) violated\\n\","
              },
              {
                "role": "ai",
                "text": "To extract records containing the phrase \"ORA-00001\" from the `exception.message` attribute using a DQL matcher in OpenPipeline, you can use the `matchesPhrase` function. Here's how it works:\n\n### Example:\n```plaintext\nmatchesPhrase(exception.message, \"ORA-00001\")\n```\n\n### Explanation:\n- **`matchesPhrase`**: Filters records containing the specified phrase.\n- **`exception.message`**: The attribute where the search is performed.\n- **`\"ORA-00001\"`**: The phrase to be matched within the attribute.\n\nThis function performs a case-insensitive search for the exact phrase \"ORA-00001\" in the `exception.message` attribute and returns only the matching records.\n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
              },
              {
                "role": "user",
                "text": "extract just the ORA-00001: unique constraint and truncate the rest"
              },
              {
                "role": "ai",
                "text": "Sorry, I cannot help you with this. \n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Sorry, I cannot help you with this. \n\nIf you want help with the creation of DQL queries, you can use Dynatrace Intelligence in Notebooks or Dashboards. Both applications support this in a specific Prompt section when pressing \"+\" to create a new cell or tile."
        }
      ]
    })
  custom_id = "copilot-68408015-0bde-4d6d-b221-cb3ebf7db76e"
  private   = true
}
