resource "dynatrace_document" "dql_query_to_match_all_host_within_a_hostgroup" {
  name    = "dql query to match all host within a hostgroup"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "dql query to match all host within a hostgroup"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "f401bafb-5dce-4346-ad15-1822ceef26c7",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "DQL Filter and search commands — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-query-language/commands/filtering-commands"
            },
            {
              "title": "DQL Best practices — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-query-language/dql-best-practices"
            }
          ],
          "state": {
            "conversationId": "4d8b8b47-8a4a-4c62-8111-f81f0764bd29",
            "history": [
              {
                "role": "user",
                "text": "dql query to match all host within a hostgroup"
              },
              {
                "role": "ai",
                "text": "To match a specific host within a host group using DQL, you can use the `fetch` and `filter` commands. Here is an example:\n\n1. **Fetch Hosts**: Retrieve all hosts.\n2. **Filter Host Group**: Filter the hosts to include only those within the specified host group.\n3. **Filter Host Name**: Further filter the hosts to match the specific host name.\n\n```unknown\nfetch dt.entity.host\n| filter dt.entity.host_group == \"your_host_group_name\"\n| filter dt.entity.host == \"all\"\n```\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To match a specific host within a host group using DQL, you can use the `fetch` and `filter` commands. Here is an example:\n\n1. **Fetch Hosts**: Retrieve all hosts.\n2. **Filter Host Group**: Filter the hosts to include only those within the specified host group.\n3. **Filter Host Name**: Further filter the hosts to match the specific host name.\n\n```unknown\nfetch dt.entity.host\n| filter dt.entity.host_group == \"your_host_group_name\"\n| filter dt.entity.host == \"all\"\n```\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        },
        {
          "role": "user",
          "text": "for openpipeline"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "e0c7083f-faa7-4576-abf4-023853053b07",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "OpenPipeline — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline"
            },
            {
              "title": "OpenPipeline",
              "type": "Hub",
              "url": "https://www.dynatrace.com/hub/detail/openpipeline/"
            },
            {
              "title": "OpenPipeline API — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/reference/openpipeline-api"
            },
            {
              "title": "Log processing with OpenPipeline — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-openpipeline"
            }
          ],
          "state": {
            "conversationId": "4d8b8b47-8a4a-4c62-8111-f81f0764bd29",
            "history": [
              {
                "role": "user",
                "text": "dql query to match all host within a hostgroup"
              },
              {
                "role": "ai",
                "text": "To match a specific host within a host group using DQL, you can use the `fetch` and `filter` commands. Here is an example:\n\n1. **Fetch Hosts**: Retrieve all hosts.\n2. **Filter Host Group**: Filter the hosts to include only those within the specified host group.\n3. **Filter Host Name**: Further filter the hosts to match the specific host name.\n\n```unknown\nfetch dt.entity.host\n| filter dt.entity.host_group == \"your_host_group_name\"\n| filter dt.entity.host == \"all\"\n```\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              },
              {
                "role": "user",
                "text": "for openpipeline"
              },
              {
                "role": "ai",
                "text": "Sorry, I cannot help you with this.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Sorry, I cannot help you with this.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        }
      ]
    })
  private = true
}
