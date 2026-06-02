resource "dynatrace_document" "search_for_a_vmware_host_that_is_not_monitored_with_a_oneagent" {
  name    = "search for a vmware host that is not monitored with a oneagent"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "search for a vmware host that is not monitored with a oneagent"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "736f4f01-edff-460c-aa2b-9c82ed2cee3f",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "VMware vSphere monitoring",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/vmware-vsphere-monitoring"
            },
            {
              "title": "Limit VMware infrastructure monitoring using permissions",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/vmware-vsphere-monitoring/limit-infrastructure-monitoring-using-permissions"
            },
            {
              "title": "VMware ESXi Host",
              "type": "Hub",
              "url": "https://www.dynatrace.com/hub/detail/vmware-esxi-host/"
            },
            {
              "title": "Settings API - VMware schema table",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/environment-api/settings/schemas/builtin-virtualization-vmware"
            }
          ],
          "state": {
            "conversationId": "b41be31a-9e56-45ee-9242-24daf1a2bfd6",
            "history": [
              {
                "role": "user",
                "text": "search for a vmware host that is not monitored with a oneagent"
              },
              {
                "role": "ai",
                "text": "To search for a VMware host that is not monitored with a OneAgent, follow these steps:\n\n1. **Go to Settings**: Navigate to **Settings** \u003e **Cloud and virtualization** \u003e **VMware**.\n2. **Check Connected Instances**: Review the list of connected vCenter servers or standalone ESXi hosts.\n3. **Verify Monitoring Status**: Ensure that the hosts listed are monitored by Dynatrace. Hosts not listed here are not monitored with a OneAgent.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To search for a VMware host that is not monitored with a OneAgent, follow these steps:\n\n1. **Go to Settings**: Navigate to **Settings** \u003e **Cloud and virtualization** \u003e **VMware**.\n2. **Check Connected Instances**: Review the list of connected vCenter servers or standalone ESXi hosts.\n3. **Verify Monitoring Status**: Ensure that the hosts listed are monitored by Dynatrace. Hosts not listed here are not monitored with a OneAgent.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        },
        {
          "role": "user",
          "text": "dql query"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "4773d9ea-021c-4fbe-bb65-6d5bd5704eea",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "DQL query action for Workflows",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/default-workflow-actions/dql-query-workflow-action"
            },
            {
              "title": "Segments in DQL queries",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/segments/concepts/segments-concepts-queries"
            },
            {
              "title": "How to use DQL queries",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-query-language/dql-guide"
            },
            {
              "title": "Operationalize DQL query results with Security Investigator",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/secure/use-cases/operationalize-query-results"
            }
          ],
          "state": {
            "conversationId": "b41be31a-9e56-45ee-9242-24daf1a2bfd6",
            "history": [
              {
                "role": "user",
                "text": "search for a vmware host that is not monitored with a oneagent"
              },
              {
                "role": "ai",
                "text": "To search for a VMware host that is not monitored with a OneAgent, follow these steps:\n\n1. **Go to Settings**: Navigate to **Settings** \u003e **Cloud and virtualization** \u003e **VMware**.\n2. **Check Connected Instances**: Review the list of connected vCenter servers or standalone ESXi hosts.\n3. **Verify Monitoring Status**: Ensure that the hosts listed are monitored by Dynatrace. Hosts not listed here are not monitored with a OneAgent.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              },
              {
                "role": "user",
                "text": "dql query"
              },
              {
                "role": "ai",
                "text": "To create a DQL query to search for a VMware host that is not monitored with a OneAgent, you can follow these steps:\n\n1. **Fetch VMware host data**: Use the `fetch` command to load VMware host data.\n2. **Filter hosts without OneAgent**: Apply a filter to exclude hosts that are monitored with OneAgent.\n\nSorry, I cannot help you with this.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To create a DQL query to search for a VMware host that is not monitored with a OneAgent, you can follow these steps:\n\n1. **Fetch VMware host data**: Use the `fetch` command to load VMware host data.\n2. **Filter hosts without OneAgent**: Apply a filter to exclude hosts that are monitored with OneAgent.\n\nSorry, I cannot help you with this.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        }
      ]
    })
  private = true
}
