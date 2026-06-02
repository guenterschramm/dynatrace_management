resource "dynatrace_document" "ci_cd_integration" {
  name    = "ci/cd integration"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "ci/cd integration"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "8f8411a9-aeb2-4888-b762-907a48d51398",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "CI/CD Process: Understanding continuous integration and delivery",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/understanding-continuous-integration-and-continuous-delivery-ci-cd/"
            },
            {
              "title": "Automate CI/CD pipelines with Dynatrace: Validation stage",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/automate-ci-cd-pipelines-with-dynatrace-part-4-validation-stage/"
            },
            {
              "title": "Automate CI/CD pipelines with Dynatrace: Part 3, Testing stage",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/automate-ci-cd-pipelines-with-dynatrace-part-3-testing-stage/"
            },
            {
              "title": "Upgrade from Cloud Automation to Site Reliability Guardian — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/deliver/site-reliability-guardian/evolve-to-srg"
            }
          ],
          "state": {
            "conversationId": "bec6052a-6b0c-43d3-8bf7-c95765769012",
            "history": [
              {
                "role": "user",
                "text": "ci/cd integration"
              },
              {
                "role": "ai",
                "text": "To integrate CI/CD with Dynatrace, follow these steps:\n\n1. **Install Dynatrace OneAgent**: Ensure Dynatrace OneAgent is installed on your infrastructure to collect telemetry data.\n2. **Configure Dynatrace API**: Set up Dynatrace API access to send events and retrieve data.\n3. **Pass Annotation Events**: Use the Ingest events API to pass annotation events at the beginning and end of each test.\n4. **Integrate Performance Test Tools**: Add headers to HTTP requests and use request attributes to gather insights.\n5. **Set Web Request Naming Rules**: Facilitate easy identification of requests across different releases or test suites.\n6. **Automate Validation with Site Reliability Guardian**: Create a guardian to validate performance, availability, and capacity objectives.\n7. **Create Workflows**: Automate release validation by creating workflows for the guardian.\n8. **Send Events to Dynatrace**: Modify your CI/CD pipeline to send events to Dynatrace, triggering the workflow.\n\nFor detailed steps and examples, refer to the Dynatrace documentation on CI/CD integration."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To integrate CI/CD with Dynatrace, follow these steps:\n\n1. **Install Dynatrace OneAgent**: Ensure Dynatrace OneAgent is installed on your infrastructure to collect telemetry data.\n2. **Configure Dynatrace API**: Set up Dynatrace API access to send events and retrieve data.\n3. **Pass Annotation Events**: Use the Ingest events API to pass annotation events at the beginning and end of each test.\n4. **Integrate Performance Test Tools**: Add headers to HTTP requests and use request attributes to gather insights.\n5. **Set Web Request Naming Rules**: Facilitate easy identification of requests across different releases or test suites.\n6. **Automate Validation with Site Reliability Guardian**: Create a guardian to validate performance, availability, and capacity objectives.\n7. **Create Workflows**: Automate release validation by creating workflows for the guardian.\n8. **Send Events to Dynatrace**: Modify your CI/CD pipeline to send events to Dynatrace, triggering the workflow.\n\nFor detailed steps and examples, refer to the Dynatrace documentation on CI/CD integration."
        }
      ]
    })
  private = true
}
