resource "dynatrace_document" "openpipeline" {
  name    = "openpipeline"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "openpipeline"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "0b556cab-eaae-4610-97ef-5a4a63fecac9",
          "role": "ai",
          "text": "OpenPipeline is a feature within Dynatrace that provides enhanced observability for processing logs, including filtering, enrichment, and routing. Here are some key points about OpenPipeline:\n\n1. **Access**: To access the OpenPipeline application, go to **Apps** \u003e **OpenPipeline** in your Dynatrace tenant. If you don't have access, you will see the message `OpenPipeline isn't enabled`.\n\n2. **Built-in Rules**: OpenPipeline offers built-in rules for common technologies and log formats. To enable these:\n   - Go to **Apps** \u003e **OpenPipeline**.\n   - Select the **Pipelines** tab and add a new record.\n   - Input a title for the pipeline.\n   - Choose **Processor** in the **Processing** tab and select **Technology bundle**.\n   - Choose the technology and provide a sample log in JSON format.\n   - Test the sample data and save the configuration.\n\n3. **Custom Rules**: To create a new rule:\n   - Go to **Apps** \u003e **OpenPipeline**.\n   - Select the **Pipelines** tab and add a new record.\n   - Input a title for the pipeline.\n   - Select a processing stage tab (e.g., **Processing**, **Metric Extraction**, **Data extraction**, **Permission**, or **Storage**).\n   - Choose a processor and provide the processing rule definition.\n   - Test the rule with a sample log in JSON"
        },
        {
          "role": "user",
          "text": "learing material"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "e6fc8edc-326a-4958-97d6-9de4b60b4e36",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Re: Services Delivery Certification - Observability learning materials",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Dynatrace-tips/Services-Delivery-Certification-Observability-learning-materials/m-p/219828#M949"
            },
            {
              "title": "Segments — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/segments"
            },
            {
              "title": "OpenPipeline — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline"
            },
            {
              "title": "Services Delivery Certification - Observability learning materials",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Dynatrace-tips/Services-Delivery-Certification-Observability-learning-materials/m-p/219792#M948"
            }
          ],
          "state": {
            "conversationId": "3230d57c-21d2-44b2-a251-2a74b6a0a4ce",
            "history": [
              {
                "role": "user",
                "text": "learing material"
              },
              {
                "role": "ai",
                "text": "Sure! Here are some tips and materials to help you prepare for the Services Delivery Certification - Observability exam:\n\n1. **Dynatrace University**: Watch the available course videos at least twice to fully understand the content.\n2. **Observability Mindmap**: Download and memorize the Observability mindmap from Dynatrace University.\n3. **Dynatrace Support Center**: Familiarize yourself with the homepage and navigation options.\n4. **Key Topics to Focus On**:\n   - Business Insights\n   - Extending monitoring using SDK and OpenKit overview\n   - Hands-on IoT training and ACE services purpose\n   - Host group, Network Zone\n   - Tagging and management zone\n   - User management and assigning Policies\n   - Process group detection rules and available options\n   - Kubernetes implementation options and best practices\n   - DDUs basics such as free tier and optimization\n   - Application health measurements and user actions key performance metrics\n\nGood luck with your exam preparation!"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Sure! Here are some tips and materials to help you prepare for the Services Delivery Certification - Observability exam:\n\n1. **Dynatrace University**: Watch the available course videos at least twice to fully understand the content.\n2. **Observability Mindmap**: Download and memorize the Observability mindmap from Dynatrace University.\n3. **Dynatrace Support Center**: Familiarize yourself with the homepage and navigation options.\n4. **Key Topics to Focus On**:\n   - Business Insights\n   - Extending monitoring using SDK and OpenKit overview\n   - Hands-on IoT training and ACE services purpose\n   - Host group, Network Zone\n   - Tagging and management zone\n   - User management and assigning Policies\n   - Process group detection rules and available options\n   - Kubernetes implementation options and best practices\n   - DDUs basics such as free tier and optimization\n   - Application health measurements and user actions key performance metrics\n\nGood luck with your exam preparation!"
        }
      ]
    })
  private = true
}
