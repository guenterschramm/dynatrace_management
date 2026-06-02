resource "dynatrace_document" "dynatrace_does_experience_vitals_work_with_security_context" {
  name      = "dynatrace does experience vitals work with security context"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "dynatrace does experience vitals work with security context"
        },
        {
          "complete": true,
          "messageToken": "325a5619-bf56-446f-8179-2dabdea47ea7",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Dynatrace for executives: Observability for security compliance",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/dynatrace-for-executives-security-compliance/"
            },
            {
              "title": "Accelerate business growth by optimizing the customer experience",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/dynatrace-for-executives-customer-experiences/"
            },
            {
              "title": "Cloud application security: The next generation",
              "type": "Website",
              "url": "https://www.dynatrace.com/resources/ebooks/cloud-application-security/"
            },
            {
              "title": "Runtime Vulnerability Analytics",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/secure/application-security/vulnerability-analytics"
            }
          ],
          "state": {
            "conversationId": "2a4c9fc1-121a-43b5-aa1f-19e35139f71b",
            "history": [
              {
                "role": "user",
                "text": "dynatrace does experience vitals work with security context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
        },
        {
          "role": "user",
          "text": "yes"
        },
        {
          "complete": true,
          "messageToken": "4ac086bb-956e-4a92-9847-fd9698885594",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Integrated AWS cloud services - Overview table",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/amazon-web-services/aws-services-overview-table"
            },
            {
              "title": "Ingest custom security events via API",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data"
            },
            {
              "title": "AES Encryption and Decryption in Synthetic HTTP Monitor using Crypto JS library",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Troubleshooting/AES-Encryption-and-Decryption-in-Synthetic-HTTP-Monitor-using/ta-p/209462"
            },
            {
              "title": "Re: Convert MDA Queries into DQL for Advanced Analytics",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/DQL/Convert-MDA-Queries-into-DQL-for-Advanced-Analytics/td-p/275579"
            }
          ],
          "state": {
            "conversationId": "2a4c9fc1-121a-43b5-aa1f-19e35139f71b",
            "history": [
              {
                "role": "user",
                "text": "dynatrace does experience vitals work with security context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "Dynatrace's **Experience Vitals** feature focuses on monitoring and optimizing user experience by analyzing performance metrics such as Apdex, user actions, and errors. It does not directly integrate with security context or provide security-related insights.\n\nFor security-related insights, Dynatrace offers **Application Security** and **Threat Detection** capabilities, which include features like **custom security events ingestion** and **threat observability**. These features are designed to monitor vulnerabilities, detect threats, and provide security analytics. You can learn more about ingesting custom security events via API [here](https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data)."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Dynatrace's **Experience Vitals** feature focuses on monitoring and optimizing user experience by analyzing performance metrics such as Apdex, user actions, and errors. It does not directly integrate with security context or provide security-related insights.\n\nFor security-related insights, Dynatrace offers **Application Security** and **Threat Detection** capabilities, which include features like **custom security events ingestion** and **threat observability**. These features are designed to monitor vulnerabilities, detect threats, and provide security analytics. You can learn more about ingesting custom security events via API [here](https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data)."
        },
        {
          "role": "user",
          "text": "can I filter the experience vitals app with the dt.security_context"
        },
        {
          "complete": true,
          "messageToken": "d4faa134-b688-488d-87cc-28e27419dd4f",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "System event models version 1.317",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-317/model/dt-system-events"
            },
            {
              "title": "System event models version 1.318",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-318/model/dt-system-events"
            },
            {
              "title": "System event models version 1.329",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-329/model/dt-system-events"
            },
            {
              "title": "System event models version 1.324",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-324/model/dt-system-events"
            }
          ],
          "state": {
            "conversationId": "2a4c9fc1-121a-43b5-aa1f-19e35139f71b",
            "history": [
              {
                "role": "user",
                "text": "dynatrace does experience vitals work with security context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "Dynatrace's **Experience Vitals** feature focuses on monitoring and optimizing user experience by analyzing performance metrics such as Apdex, user actions, and errors. It does not directly integrate with security context or provide security-related insights.\n\nFor security-related insights, Dynatrace offers **Application Security** and **Threat Detection** capabilities, which include features like **custom security events ingestion** and **threat observability**. These features are designed to monitor vulnerabilities, detect threats, and provide security analytics. You can learn more about ingesting custom security events via API [here](https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data)."
              },
              {
                "role": "user",
                "text": "can I filter the experience vitals app with the dt.security_context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application? If so, please provide more details about your use case or requirements."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Could you please clarify your question? Are you asking if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application? If so, please provide more details about your use case or requirements."
        },
        {
          "role": "user",
          "text": "yes"
        },
        {
          "complete": true,
          "messageToken": "113ebc7c-35a2-4626-90f7-a8bed3fd6015",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Integrated AWS cloud services - Overview table",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/amazon-web-services/aws-services-overview-table"
            },
            {
              "title": "Ingest custom security events via API",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data"
            },
            {
              "title": "AES Encryption and Decryption in Synthetic HTTP Monitor using Crypto JS library",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Troubleshooting/AES-Encryption-and-Decryption-in-Synthetic-HTTP-Monitor-using/ta-p/209462"
            },
            {
              "title": "Re: Convert MDA Queries into DQL for Advanced Analytics",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/DQL/Convert-MDA-Queries-into-DQL-for-Advanced-Analytics/td-p/275579"
            }
          ],
          "state": {
            "conversationId": "2a4c9fc1-121a-43b5-aa1f-19e35139f71b",
            "history": [
              {
                "role": "user",
                "text": "dynatrace does experience vitals work with security context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "Dynatrace's **Experience Vitals** feature focuses on monitoring and optimizing user experience by analyzing performance metrics such as Apdex, user actions, and errors. It does not directly integrate with security context or provide security-related insights.\n\nFor security-related insights, Dynatrace offers **Application Security** and **Threat Detection** capabilities, which include features like **custom security events ingestion** and **threat observability**. These features are designed to monitor vulnerabilities, detect threats, and provide security analytics. You can learn more about ingesting custom security events via API [here](https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data)."
              },
              {
                "role": "user",
                "text": "can I filter the experience vitals app with the dt.security_context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application? If so, please provide more details about your use case or requirements."
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "I don't know if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application. For further clarification, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "I don't know if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application. For further clarification, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
        },
        {
          "role": "user",
          "text": "add the dt.security_context to user and session data"
        },
        {
          "complete": true,
          "messageToken": "ca11be29-fd05-4f41-8ea4-becab435d622",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "System event models version 1.322",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-322/model/dt-system-events"
            },
            {
              "title": "System event models version 1.318",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-318/model/dt-system-events"
            },
            {
              "title": "System event models version 1.316",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-316/model/dt-system-events"
            },
            {
              "title": "System event models version 1.330",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/semantic-dictionary/versions/id-1-330/model/dt-system-events"
            }
          ],
          "state": {
            "conversationId": "2a4c9fc1-121a-43b5-aa1f-19e35139f71b",
            "history": [
              {
                "role": "user",
                "text": "dynatrace does experience vitals work with security context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "Dynatrace's **Experience Vitals** feature focuses on monitoring and optimizing user experience by analyzing performance metrics such as Apdex, user actions, and errors. It does not directly integrate with security context or provide security-related insights.\n\nFor security-related insights, Dynatrace offers **Application Security** and **Threat Detection** capabilities, which include features like **custom security events ingestion** and **threat observability**. These features are designed to monitor vulnerabilities, detect threats, and provide security analytics. You can learn more about ingesting custom security events via API [here](https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data)."
              },
              {
                "role": "user",
                "text": "can I filter the experience vitals app with the dt.security_context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application? If so, please provide more details about your use case or requirements."
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "I don't know if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application. For further clarification, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
              },
              {
                "role": "user",
                "text": "add the dt.security_context to user and session data"
              },
              {
                "role": "ai",
                "text": "The provided context does not specify whether the `dt.security_context` attribute can be added to user and session data or used as a filter within the Experience Vitals application. For detailed information on this functionality, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "The provided context does not specify whether the `dt.security_context` attribute can be added to user and session data or used as a filter within the Experience Vitals application. For detailed information on this functionality, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
        },
        {
          "role": "user",
          "text": "openpipeline, how to add the dt.security_context to rum data"
        },
        {
          "complete": true,
          "messageToken": "6fb12b91-2cfd-4061-9413-1302b07c1a2c",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Configure advanced permissions with security context",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/grail/organize-data/advanced-permission-setup"
            },
            {
              "title": "Set up Grail permissions for Metrics",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics/metrics-security-context"
            },
            {
              "title": "Business events security context",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/business-observability/bo-event-processing/bo-security-context"
            },
            {
              "title": "Set up Grail permissions for logs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-security-context"
            }
          ],
          "state": {
            "conversationId": "2a4c9fc1-121a-43b5-aa1f-19e35139f71b",
            "history": [
              {
                "role": "user",
                "text": "dynatrace does experience vitals work with security context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if Dynatrace's Experience Vitals feature integrates with security context or if it provides security-related insights?"
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "Dynatrace's **Experience Vitals** feature focuses on monitoring and optimizing user experience by analyzing performance metrics such as Apdex, user actions, and errors. It does not directly integrate with security context or provide security-related insights.\n\nFor security-related insights, Dynatrace offers **Application Security** and **Threat Detection** capabilities, which include features like **custom security events ingestion** and **threat observability**. These features are designed to monitor vulnerabilities, detect threats, and provide security analytics. You can learn more about ingesting custom security events via API [here](https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-custom-data)."
              },
              {
                "role": "user",
                "text": "can I filter the experience vitals app with the dt.security_context"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you asking if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application? If so, please provide more details about your use case or requirements."
              },
              {
                "role": "user",
                "text": "yes"
              },
              {
                "role": "ai",
                "text": "I don't know if the `dt.security_context` attribute can be used as a filter within the Dynatrace Experience Vitals application. For further clarification, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
              },
              {
                "role": "user",
                "text": "add the dt.security_context to user and session data"
              },
              {
                "role": "ai",
                "text": "The provided context does not specify whether the `dt.security_context` attribute can be added to user and session data or used as a filter within the Experience Vitals application. For detailed information on this functionality, I recommend consulting the Dynatrace documentation or reaching out to Dynatrace support."
              },
              {
                "role": "user",
                "text": "openpipeline, how to add the dt.security_context to rum data"
              },
              {
                "role": "ai",
                "text": "Dynatrace does not currently provide specific documentation or guidance on adding the `dt.security_context` attribute to Real User Monitoring (RUM) data using OpenPipeline. The available context focuses on telemetry data such as metrics, logs, spans, and business events. If you need assistance with RUM data or have specific requirements, I recommend reaching out to Dynatrace support for further clarification."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Dynatrace does not currently provide specific documentation or guidance on adding the `dt.security_context` attribute to Real User Monitoring (RUM) data using OpenPipeline. The available context focuses on telemetry data such as metrics, logs, spans, and business events. If you need assistance with RUM data or have specific requirements, I recommend reaching out to Dynatrace support for further clarification."
        }
      ]
    })
  custom_id = "copilot-9395be22-46a4-4511-976d-6cab18f04aa6"
  private   = true
}
