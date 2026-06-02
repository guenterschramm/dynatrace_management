resource "dynatrace_document" "find_all_vmware_machines_that_had_below_5_cpu_in_the_last_90days" {
  name    = "find all vmware machines that had below 5% cpu in the last 90days"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "find all vmware machines that had below 5% cpu in the last 90days"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "c9d819cb-b3cc-4865-9409-5063315a40b7",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Virtual machine migration and performance — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/vmware-vsphere-monitoring/how-does-virtual-machine-migration-affect-performance"
            },
            {
              "title": "Topology — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/semantic-dictionary/model/dt-entities"
            }
          ],
          "state": {
            "conversationId": "f3a81055-fd26-43cf-8ee3-d44f2daae087",
            "history": [
              {
                "role": "user",
                "text": "find all vmware machines that had below 5% cpu in the last 90days"
              },
              {
                "role": "ai",
                "text": "To find all VMware virtual machines that had below 5% CPU ready time in the last 90 days, you can follow these steps:\n\n1. **Navigate to VMware**: Go to the VMware or VMware Classic section in Dynatrace.\n2. **Select the vCenter Cluster**: Choose the vCenter cluster that includes the host with the virtual machines you want to examine.\n3. **Select the VMware Host**: From the vCenter cluster table, select the VMware host.\n4. **View CPU Ready Time**: Select **Consuming virtual machines** or **Show details** to view the CPU and memory data for the selected host machine.\n5. **Filter by CPU Ready Time**: Select the **CPU ready time** tab for a chart view of the ready time metric. You can then filter the virtual machines to find those with CPU ready time below 5%.\n\nSorry, I cannot help you with this.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To find all VMware virtual machines that had below 5% CPU ready time in the last 90 days, you can follow these steps:\n\n1. **Navigate to VMware**: Go to the VMware or VMware Classic section in Dynatrace.\n2. **Select the vCenter Cluster**: Choose the vCenter cluster that includes the host with the virtual machines you want to examine.\n3. **Select the VMware Host**: From the vCenter cluster table, select the VMware host.\n4. **View CPU Ready Time**: Select **Consuming virtual machines** or **Show details** to view the CPU and memory data for the selected host machine.\n5. **Filter by CPU Ready Time**: Select the **CPU ready time** tab for a chart view of the ready time metric. You can then filter the virtual machines to find those with CPU ready time below 5%.\n\nSorry, I cannot help you with this.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        }
      ]
    })
  private = true
}
