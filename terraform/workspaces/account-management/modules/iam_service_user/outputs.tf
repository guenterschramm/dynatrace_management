output "module_export_status" {
  value = fileexists(var.object_file)
}
