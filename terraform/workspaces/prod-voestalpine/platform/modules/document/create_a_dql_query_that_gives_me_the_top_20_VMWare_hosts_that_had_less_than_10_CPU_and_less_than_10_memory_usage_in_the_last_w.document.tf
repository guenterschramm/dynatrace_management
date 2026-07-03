resource "dynatrace_document" "create_a_dql_query_that_gives_me_the_top_20_VMWare_hosts_that_had_less_than_10_CPU_and_less_than_10_memory_usage_in_the_last_w" {
  name      = "create a dql query that gives me the top 20 VMWare hosts that had less than 10% CPU and less than 10% memory usage in the last w"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "create a dql query that gives me the top 20 VMWare hosts that had less than 10% CPU and less than 10% memory usage in the last week"
        },
        {
          "complete": true,
          "messageToken": "43793eee-47d4-4520-a3b4-4cdd01a18c9c",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "DQL timeseries examples",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics/dql-examples"
            },
            {
              "title": "Re: DQL - Metric in dashboard to host",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/DQL/DQL-Metric-in-dashboard-to-host/td-p/269673"
            },
            {
              "title": "Re: listing the most consuming processes in terms of Network, CPU, Memory, Disk via DQL",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/DQL/listing-the-most-consuming-processes-in-terms-of-Network-CPU/td-p/280729"
            }
          ],
          "state": {
            "conversationId": "8be79a76-af5e-4908-855e-b95e0545e392",
            "history": [
              {
                "role": "user",
                "text": "create a dql query that gives me the top 20 VMWare hosts that had less than 10% CPU and less than 10% memory usage in the last week"
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
  custom_id = "copilot-576cdb82-fc54-47cc-b760-90931916c3ff"
  private   = true
}
