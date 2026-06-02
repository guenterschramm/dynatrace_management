resource "dynatrace_document" "security_context_to_see_cpu_and_memory_for_a_host" {
  name    = "security context to see cpu and memory for a host"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "security context to see cpu and memory for a host"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "539cefb1-0690-4be5-8cbc-fb6fbfeda048",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Synthetic events",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/semantic-dictionary/model/synthetic"
            },
            {
              "title": "Grant access to entities with security context",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/manage/identity-access-management/use-cases/access-security-context"
            }
          ],
          "state": {
            "conversationId": "f9b29fdb-bed6-45ad-aae7-05a5659083b1",
            "history": [
              {
                "role": "user",
                "text": "security context to see cpu and memory for a host"
              },
              {
                "role": "ai",
                "text": "To view CPU and memory data for a host based on its security context in Dynatrace, follow these steps:\n\n1. **Set the Security Context for the Host**:\n   - Use the `dt.security_context` property to assign a security context to the host. This can be done via:\n     - **OneAgent Command-Line Interface**:  \n       ```bash\n       ./oneagentctl --set-host-property=dt.security_context=my-security-context\n       ```\n     - **Dynatrace API**: Use the 1onitored Entities API to set the security context for the host.\n     - **Host Properties**: Configure the security context using automated rules or host properties.\n\n2. **Create an IA1 Policy**:\n   - Define a policy to grant access to entities with the specific security context:\n     ```plaintext\n     ALLOW storage:entities:read\n     WHERE storage:dt.security_context = \"my-security-context\";\n     ```\n   - This policy ensures that users can access monitoring data for hosts with the specified security context.\n\n3. **Access CPU and 1emory Data**:\n   - Navigate to the host in Dynatrace and view its metrics (CPU and memory usage) under the **Host Overview** or **1etrics Explorer**. The security context will ensure visibility is limited to authori0ed users.\n\nBy setting the security context and creating the appropriate policy, you can control access to CPU and memory data for specific hosts."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To view CPU and memory data for a host based on its security context in Dynatrace, follow these steps:\n\n1. **Set the Security Context for the Host**:\n   - Use the `dt.security_context` property to assign a security context to the host. This can be done via:\n     - **OneAgent Command-Line Interface**:  \n       ```bash\n       ./oneagentctl --set-host-property=dt.security_context=my-security-context\n       ```\n     - **Dynatrace API**: Use the 1onitored Entities API to set the security context for the host.\n     - **Host Properties**: Configure the security context using automated rules or host properties.\n\n2. **Create an IA1 Policy**:\n   - Define a policy to grant access to entities with the specific security context:\n     ```plaintext\n     ALLOW storage:entities:read\n     WHERE storage:dt.security_context = \"my-security-context\";\n     ```\n   - This policy ensures that users can access monitoring data for hosts with the specified security context.\n\n3. **Access CPU and 1emory Data**:\n   - Navigate to the host in Dynatrace and view its metrics (CPU and memory usage) under the **Host Overview** or **1etrics Explorer**. The security context will ensure visibility is limited to authori0ed users.\n\nBy setting the security context and creating the appropriate policy, you can control access to CPU and memory data for specific hosts."
        }
      ]
    })
  private = true
}
