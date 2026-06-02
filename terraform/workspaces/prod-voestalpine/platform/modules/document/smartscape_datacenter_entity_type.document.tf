resource "dynatrace_document" "smartscape_datacenter_entity_type" {
  name    = "smartscape datacenter entity type"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "smartscape datacenter entity type"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "af91f585-18d7-4da9-9e96-e377e4590000",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Migrate from Topology and Smartscape API to Monitored entities API — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/basics/deprecation-migration-guides/topology-v1-to-entity-v2"
            },
            {
              "title": "Visualize your environment topology through Smartscape — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/smartscape"
            },
            {
              "title": "Maintenance windows API - POST a maintenance window — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-api/configuration-api/maintenance-windows-api/post-mw"
            }
          ],
          "state": {
            "conversationId": "12cc6934-3661-4bdd-bc74-7414546c5ea4",
            "history": [
              {
                "role": "user",
                "text": "smartscape datacenter entity type"
              },
              {
                "role": "ai",
                "text": "In Smartscape, the **Data centers** entity type represents nodes that indicate where your hosts reside. These nodes can signify physical servers located in specific cities or virtual servers in PaaS-based infrastructures, labeled accordingly (e.g., VMware data center, AWS Availability Zone, or Azure region)."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "In Smartscape, the **Data centers** entity type represents nodes that indicate where your hosts reside. These nodes can signify physical servers located in specific cities or virtual servers in PaaS-based infrastructures, labeled accordingly (e.g., VMware data center, AWS Availability Zone, or Azure region)."
        },
        {
          "role": "user",
          "text": "what do I need to add to a management zone to see the datacenter in smartscape"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "e7358322-3fb0-49fe-9483-f4c167cfb3b8",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Available tiles — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/dashboards-classic/charts-and-tiles/available-tiles"
            }
          ],
          "state": {
            "conversationId": "12cc6934-3661-4bdd-bc74-7414546c5ea4",
            "history": [
              {
                "role": "user",
                "text": "smartscape datacenter entity type"
              },
              {
                "role": "ai",
                "text": "In Smartscape, the **Data centers** entity type represents nodes that indicate where your hosts reside. These nodes can signify physical servers located in specific cities or virtual servers in PaaS-based infrastructures, labeled accordingly (e.g., VMware data center, AWS Availability Zone, or Azure region)."
              },
              {
                "role": "user",
                "text": "what do I need to add to a management zone to see the datacenter in smartscape"
              },
              {
                "role": "ai",
                "text": "To ensure that the datacenter entity is visible in Smartscape within a management zone, you need to include the following elements or configurations:\n\n1. **Hosts**: Ensure that the hosts within the datacenter are included in the management zone.\n2. **Processes**: Include the processes running on the hosts within the datacenter.\n3. **Services**: Ensure that the services associated with the processes are part of the management zone.\n4. **Applications**: Include any applications that interact with the services within the datacenter.\n\nBy including these elements, the datacenter entity will be visible in Smartscape for the specified management zone."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To ensure that the datacenter entity is visible in Smartscape within a management zone, you need to include the following elements or configurations:\n\n1. **Hosts**: Ensure that the hosts within the datacenter are included in the management zone.\n2. **Processes**: Include the processes running on the hosts within the datacenter.\n3. **Services**: Ensure that the services associated with the processes are part of the management zone.\n4. **Applications**: Include any applications that interact with the services within the datacenter.\n\nBy including these elements, the datacenter entity will be visible in Smartscape for the specified management zone."
        },
        {
          "role": "user",
          "text": "datacenter appears empty in smartscape"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "4b58f78c-ed12-4303-aa32-fe82129fd6c8",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Topology — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/semantic-dictionary/model/dt-entities"
            }
          ],
          "state": {
            "conversationId": "12cc6934-3661-4bdd-bc74-7414546c5ea4",
            "history": [
              {
                "role": "user",
                "text": "smartscape datacenter entity type"
              },
              {
                "role": "ai",
                "text": "In Smartscape, the **Data centers** entity type represents nodes that indicate where your hosts reside. These nodes can signify physical servers located in specific cities or virtual servers in PaaS-based infrastructures, labeled accordingly (e.g., VMware data center, AWS Availability Zone, or Azure region)."
              },
              {
                "role": "user",
                "text": "what do I need to add to a management zone to see the datacenter in smartscape"
              },
              {
                "role": "ai",
                "text": "To ensure that the datacenter entity is visible in Smartscape within a management zone, you need to include the following elements or configurations:\n\n1. **Hosts**: Ensure that the hosts within the datacenter are included in the management zone.\n2. **Processes**: Include the processes running on the hosts within the datacenter.\n3. **Services**: Ensure that the services associated with the processes are part of the management zone.\n4. **Applications**: Include any applications that interact with the services within the datacenter.\n\nBy including these elements, the datacenter entity will be visible in Smartscape for the specified management zone."
              },
              {
                "role": "user",
                "text": "datacenter appears empty in smartscape"
              },
              {
                "role": "ai",
                "text": "The datacenter may appear empty in Smartscape for several reasons:\n\n1. **No Entities Detected**: There might be no hosts, hypervisors, virtual machines, or other entities detected within the datacenter.\n2. **Monitoring Configuration**: The entities within the datacenter might not be properly configured for monitoring by Dynatrace.\n3. **Data Collection Issues**: There could be issues with data collection or communication between Dynatrace and the monitored environment.\n4. **Visibility Settings**: The visibility settings might be restricting the display of certain entities within the datacenter.\n\nEnsure that the entities within the datacenter are properly configured and monitored by Dynatrace, and check the visibility settings to confirm that all relevant entities are displayed."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "The datacenter may appear empty in Smartscape for several reasons:\n\n1. **No Entities Detected**: There might be no hosts, hypervisors, virtual machines, or other entities detected within the datacenter.\n2. **Monitoring Configuration**: The entities within the datacenter might not be properly configured for monitoring by Dynatrace.\n3. **Data Collection Issues**: There could be issues with data collection or communication between Dynatrace and the monitored environment.\n4. **Visibility Settings**: The visibility settings might be restricting the display of certain entities within the datacenter.\n\nEnsure that the entities within the datacenter are properly configured and monitored by Dynatrace, and check the visibility settings to confirm that all relevant entities are displayed."
        },
        {
          "role": "user",
          "text": "datacenter in smartscape are only visible when no management zone is selected"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "645ae4c8-c84b-4b0d-9bff-e47c49d95e23",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Loosing datacenter in smartscape while using MZ",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Loosing-datacenter-in-smartscape-while-using-MZ/m-p/120760#M13217"
            },
            {
              "title": "Re: Loosing datacenter in smartscape while using MZ",
              "type": "Community",
              "url": "https://community.dynatrace.com/t5/Open-Q-A/Loosing-datacenter-in-smartscape-while-using-MZ/m-p/120761#M13218"
            },
            {
              "title": "Available tiles — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/dashboards-classic/charts-and-tiles/available-tiles"
            }
          ],
          "state": {
            "conversationId": "12cc6934-3661-4bdd-bc74-7414546c5ea4",
            "history": [
              {
                "role": "user",
                "text": "smartscape datacenter entity type"
              },
              {
                "role": "ai",
                "text": "In Smartscape, the **Data centers** entity type represents nodes that indicate where your hosts reside. These nodes can signify physical servers located in specific cities or virtual servers in PaaS-based infrastructures, labeled accordingly (e.g., VMware data center, AWS Availability Zone, or Azure region)."
              },
              {
                "role": "user",
                "text": "what do I need to add to a management zone to see the datacenter in smartscape"
              },
              {
                "role": "ai",
                "text": "To ensure that the datacenter entity is visible in Smartscape within a management zone, you need to include the following elements or configurations:\n\n1. **Hosts**: Ensure that the hosts within the datacenter are included in the management zone.\n2. **Processes**: Include the processes running on the hosts within the datacenter.\n3. **Services**: Ensure that the services associated with the processes are part of the management zone.\n4. **Applications**: Include any applications that interact with the services within the datacenter.\n\nBy including these elements, the datacenter entity will be visible in Smartscape for the specified management zone."
              },
              {
                "role": "user",
                "text": "datacenter appears empty in smartscape"
              },
              {
                "role": "ai",
                "text": "The datacenter may appear empty in Smartscape for several reasons:\n\n1. **No Entities Detected**: There might be no hosts, hypervisors, virtual machines, or other entities detected within the datacenter.\n2. **Monitoring Configuration**: The entities within the datacenter might not be properly configured for monitoring by Dynatrace.\n3. **Data Collection Issues**: There could be issues with data collection or communication between Dynatrace and the monitored environment.\n4. **Visibility Settings**: The visibility settings might be restricting the display of certain entities within the datacenter.\n\nEnsure that the entities within the datacenter are properly configured and monitored by Dynatrace, and check the visibility settings to confirm that all relevant entities are displayed."
              },
              {
                "role": "user",
                "text": "datacenter in smartscape are only visible when no management zone is selected"
              },
              {
                "role": "ai",
                "text": "Yes, datacenters in Smartscape are only visible when no management zone is selected. This is because datacenters come from VMware or cloud integrations, which currently can't be assigned to a management zone."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Yes, datacenters in Smartscape are only visible when no management zone is selected. This is because datacenters come from VMware or cloud integrations, which currently can't be assigned to a management zone."
        }
      ]
    })
  private = true
}
