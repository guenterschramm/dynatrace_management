resource "dynatrace_document" "add_custom_certificate_to_activegate" {
  name    = "add custom certificate to activegate"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "add custom certificate to activegate"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "96e35d79-8779-4266-b8d9-d32b629a5550",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Custom SSL certificate for ActiveGate",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/dynatrace-activegate/configuration/configure-custom-ssl-certificate-on-activegate"
            },
            {
              "title": "Trusted root certificates for ActiveGate",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/dynatrace-activegate/configuration/configure-trusted-root-certificates-on-activegate"
            },
            {
              "title": "Customize ActiveGate installation on Windows",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/dynatrace-activegate/installation/windows/windows-customize-installation-for-activegate"
            }
          ],
          "state": {
            "conversationId": "85a9c556-ccfd-4f7e-9de5-15a7c09f3173",
            "history": [
              {
                "role": "user",
                "text": "add custom certificate to activegate"
              },
              {
                "role": "ai",
                "text": "To add a custom SSL certificate to ActiveGate, follow these steps:\n\n1. **Copy the certificate file**:  \n   Place the `PKCS#12` certificate file in the [ActiveGate SSL directory](https://www.dynatrace.com/support/help/docs/ingest-from/dynatrace-activegate/configuration/where-can-i-find-activegate-files).  \n   - On Linux, ensure the file permissions include the ActiveGate user (`dtuserag` by default).  \n   - On Windows, ensure the `LocalService` account has access to the file.\n\n2. **Update the `custom.properties` file**:  \n   Add the following entries to the `[com.compuware.apm.webserver]` section in the `custom.properties` file located in the [ActiveGate configuration directory](https://www.dynatrace.com/support/help/docs/ingest-from/dynatrace-activegate/configuration/where-can-i-find-activegate-files):  \n   ```plaintext\n   [com.compuware.apm.webserver]\n   certificate-file = \u003ccertificate-file.p12\u003e\n   certificate-password = \u003cpassword\u003e\n   certificate-alias = \u003cfriendly-name\u003e\n   ```\n   - Use lowercase for the `certificate-alias` value.  \n   - If the certificate lacks a friendly name, omit the `certificate-alias` property.\n\n3. **Restart ActiveGate**:  \n   Restart the ActiveGate service to apply the changes. The password will be obfuscated during the restart.\n\nAlternatively, you can manage certificates via the REST API for remote configuration. Let me know if you need details on that process!"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To add a custom SSL certificate to ActiveGate, follow these steps:\n\n1. **Copy the certificate file**:  \n   Place the `PKCS#12` certificate file in the [ActiveGate SSL directory](https://www.dynatrace.com/support/help/docs/ingest-from/dynatrace-activegate/configuration/where-can-i-find-activegate-files).  \n   - On Linux, ensure the file permissions include the ActiveGate user (`dtuserag` by default).  \n   - On Windows, ensure the `LocalService` account has access to the file.\n\n2. **Update the `custom.properties` file**:  \n   Add the following entries to the `[com.compuware.apm.webserver]` section in the `custom.properties` file located in the [ActiveGate configuration directory](https://www.dynatrace.com/support/help/docs/ingest-from/dynatrace-activegate/configuration/where-can-i-find-activegate-files):  \n   ```plaintext\n   [com.compuware.apm.webserver]\n   certificate-file = \u003ccertificate-file.p12\u003e\n   certificate-password = \u003cpassword\u003e\n   certificate-alias = \u003cfriendly-name\u003e\n   ```\n   - Use lowercase for the `certificate-alias` value.  \n   - If the certificate lacks a friendly name, omit the `certificate-alias` property.\n\n3. **Restart ActiveGate**:  \n   Restart the ActiveGate service to apply the changes. The password will be obfuscated during the restart.\n\nAlternatively, you can manage certificates via the REST API for remote configuration. Let me know if you need details on that process!"
        }
      ]
    })
  private = true
}
