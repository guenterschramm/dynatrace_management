resource "dynatrace_document" "automatically_tag_all_webapplication_with_the_hostgroup_name_they_are_running_on" {
  name    = "automatically tag all webapplication with the hostgroup name they are running on"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "automatically tag all webapplication with the hostgroup name they are running on"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "b2f10508-6eb9-4ee0-ab0d-9d78f4ff0d97",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Re: Autotagging process groups on a specific hosts",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Autotagging-process-groups-on-a-specific-hosts/td-p/270735"
            },
            {
              "title": "Re: Auto tag based off of hostname",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Auto-tag-based-off-of-hostname/td-p/225384"
            },
            {
              "title": "Best practice examples - from Management Zones to Segments",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/segments/upgrade-guide-segments"
            }
          ],
          "state": {
            "conversationId": "a4e2e319-4b9c-4b61-ba45-b8dd8e70a52c",
            "history": [
              {
                "role": "user",
                "text": "automatically tag all webapplication with the hostgroup name they are running on"
              },
              {
                "role": "ai",
                "text": "To automatically tag all web applications with the host group name they are running on, you can follow these steps:\n\n1. **Set Host Group Tags**:\n   - Ensure that host groups are defined and tagged during the OneAgent installation or via the `oneagentctl` tool. This will enrich all signals sent by the OneAgent with the `dt.host_group.id` field.\n\n2. **Create Auto-Tagging Rule**:\n   - Use the auto-tagging feature in Dynatrace to create a rule that applies tags to web applications based on the host group name.\n   - Define the tag key (e.g., `HostGroup`) and set the value dynamically to the host group name.\n\n3. **Segment Configuration**:\n   - If needed, you can define a segment variable using a DQL query to fetch the host group name and propagate it to related entities like web applications. Example query:\n     ```plaintext\n     fetch dt.entity.host_group | fields hgName = entity.name, tag = concat(\"HostGroup:\", entity.name)\n     ```\n\nThis approach ensures that web applications are tagged with the host group name, enabling better organization and filtering in Dynatrace."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To automatically tag all web applications with the host group name they are running on, you can follow these steps:\n\n1. **Set Host Group Tags**:\n   - Ensure that host groups are defined and tagged during the OneAgent installation or via the `oneagentctl` tool. This will enrich all signals sent by the OneAgent with the `dt.host_group.id` field.\n\n2. **Create Auto-Tagging Rule**:\n   - Use the auto-tagging feature in Dynatrace to create a rule that applies tags to web applications based on the host group name.\n   - Define the tag key (e.g., `HostGroup`) and set the value dynamically to the host group name.\n\n3. **Segment Configuration**:\n   - If needed, you can define a segment variable using a DQL query to fetch the host group name and propagate it to related entities like web applications. Example query:\n     ```plaintext\n     fetch dt.entity.host_group | fields hgName = entity.name, tag = concat(\"HostGroup:\", entity.name)\n     ```\n\nThis approach ensures that web applications are tagged with the host group name, enabling better organization and filtering in Dynatrace."
        }
      ]
    })
  private = true
}
