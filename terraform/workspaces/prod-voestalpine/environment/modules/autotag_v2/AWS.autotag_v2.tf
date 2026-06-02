resource "dynatrace_autotag_v2" "AWS" {
  name                          = "AWS"
  description                   = "Host running in AWS"
  # rules_maintained_externally = false
  rules {
    rule {
      type                = "ME"
      enabled             = true
      value_format        = "{Ec2Instance:AmiId}, {Ec2Instance:BeanstalkEnvironmentName}, {Ec2Instance:InstanceId}, {Ec2Instance:InstanceType}, {Ec2Instance:LocalHostName}, {Ec2Instance:Name}, {Ec2Instance:PublicHostName}, {Ec2Instance:SecurityGroup}, {AwsAvailabilityZone:Name}"
      value_normalization = "Leave text as-is"
      attribute_rule {
        entity_type           = "HOST"
        host_to_pgpropagation = false
        conditions {
          condition {
            enum_value = "AWS_NITRO"
            key        = "HOST_HYPERVISOR_TYPE"
            operator   = "EQUALS"
          }
        }
      }
    }
  }
}
