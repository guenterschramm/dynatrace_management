resource "dynatrace_document" "set_multiple_dt_security_context_in_an_extension" {
  name      = "set multiple dt.security_context in an extension"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "set multiple dt.security_context in an extension"
        },
        {
          "complete": true,
          "messageToken": "b74f4cf8-ba6e-4fe1-8cc7-2d2166d882d8",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "System event models",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events"
            }
          ],
          "state": {
            "conversationId": "67cbbd27-8791-4ddc-9381-9ad125388caf",
            "history": [
              {
                "role": "user",
                "text": "set multiple dt.security_context in an extension"
              },
              {
                "role": "ai",
                "text": "It is not possible to set multiple `dt.security_context` values in a single extension. The `dt.security_context` must be one of the predefined values, and only one can be specified per extension. \n\nIf you need to use different security contexts, you would need to create separate extensions, each with its own `dt.security_context`."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "It is not possible to set multiple `dt.security_context` values in a single extension. The `dt.security_context` must be one of the predefined values, and only one can be specified per extension. \n\nIf you need to use different security contexts, you would need to create separate extensions, each with its own `dt.security_context`."
        },
        {
          "role": "user",
          "text": "can I define a list of dt.security_context or an array of values"
        },
        {
          "complete": true,
          "messageToken": "248a6e01-cec9-4cd8-aa64-6addc60c9d5e",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "System event models",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/model/dt-system-events"
            }
          ],
          "state": {
            "conversationId": "67cbbd27-8791-4ddc-9381-9ad125388caf",
            "history": [
              {
                "role": "user",
                "text": "set multiple dt.security_context in an extension"
              },
              {
                "role": "ai",
                "text": "It is not possible to set multiple `dt.security_context` values in a single extension. The `dt.security_context` must be one of the predefined values, and only one can be specified per extension. \n\nIf you need to use different security contexts, you would need to create separate extensions, each with its own `dt.security_context`."
              },
              {
                "role": "user",
                "text": "can I define a list of dt.security_context or an array of values"
              },
              {
                "role": "ai",
                "text": "No, it is not possible to define a list or an array of `dt.security_context` values in a Dynatrace extension. The `dt.security_context` must be a single value selected from the predefined options specified in the Dynatrace documentation. It cannot be defined as a list or array."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "No, it is not possible to define a list or an array of `dt.security_context` values in a Dynatrace extension. The `dt.security_context` must be a single value selected from the predefined options specified in the Dynatrace documentation. It cannot be defined as a list or array."
        },
        {
          "role": "user",
          "text": "comma seperated list"
        },
        {
          "complete": true,
          "messageToken": "bf364136-c930-497e-9761-07594f6908d1",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Re: update problem closure email notification",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Alerting/Update-quot-Problem-closure-quot-email-notification/td-p/285845"
            },
            {
              "title": "Attacks API - GET all attacks",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/dynatrace-api/environment-api/application-security/attacks/get-attacks"
            },
            {
              "title": "Dynatrace Pattern Language",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/grail/dynatrace-pattern-language"
            },
            {
              "title": "Metrics API - Metric selector",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/dynatrace-api/environment-api/metric-v2/metric-selector"
            }
          ],
          "state": {
            "conversationId": "67cbbd27-8791-4ddc-9381-9ad125388caf",
            "history": [
              {
                "role": "user",
                "text": "set multiple dt.security_context in an extension"
              },
              {
                "role": "ai",
                "text": "It is not possible to set multiple `dt.security_context` values in a single extension. The `dt.security_context` must be one of the predefined values, and only one can be specified per extension. \n\nIf you need to use different security contexts, you would need to create separate extensions, each with its own `dt.security_context`."
              },
              {
                "role": "user",
                "text": "can I define a list of dt.security_context or an array of values"
              },
              {
                "role": "ai",
                "text": "No, it is not possible to define a list or an array of `dt.security_context` values in a Dynatrace extension. The `dt.security_context` must be a single value selected from the predefined options specified in the Dynatrace documentation. It cannot be defined as a list or array."
              },
              {
                "role": "user",
                "text": "comma seperated list"
              },
              {
                "role": "ai",
                "text": "No, it is not possible to define a comma-separated list of `dt.security_context` values in a Dynatrace extension. The `dt.security_context` attribute is designed to hold a single value that represents the security context for the data being ingested. If you need to associate multiple values, you would need to use separate attributes or a different approach to structure your data."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "No, it is not possible to define a comma-separated list of `dt.security_context` values in a Dynatrace extension. The `dt.security_context` attribute is designed to hold a single value that represents the security context for the data being ingested. If you need to associate multiple values, you would need to use separate attributes or a different approach to structure your data."
        }
      ]
    })
  custom_id = "copilot-ef5f5ec0-67ca-4a20-9571-a72172a4dbbd"
  private   = true
}
