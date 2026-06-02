resource "dynatrace_metric_metadata" "PacketsDropped" {
  display_name = "PacketsDropped"
  metric_id    = "metric-cloud.aws.privatelinkendpoints.PacketsDropped.By.Endpoint_Type.Service_Name.VPC_Endpoint_Id.VPC_Id"
  unit         = "Count"
}
