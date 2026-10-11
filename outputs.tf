output "devops_deploy_stages_lookup_id" {
  description = "Map of id values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_deploy_stages_lookup_compartment_id" {
  description = "Map of compartment_id values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_deploy_stages_lookup_deploy_pipeline_id" {
  description = "Map of deploy_pipeline_id values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no deploy_pipeline_id are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.deploy_pipeline_id if v.deploy_pipeline_id != null && length(v.deploy_pipeline_id) > 0 }
}
output "devops_deploy_stages_lookup_deploy_stage_collection" {
  description = "Map of deploy_stage_collection values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no deploy_stage_collection are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.deploy_stage_collection if v.deploy_stage_collection != null && length(v.deploy_stage_collection) > 0 }
}
output "devops_deploy_stages_lookup_display_name" {
  description = "Map of display_name values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "devops_deploy_stages_lookup_filter" {
  description = "Map of filter values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "devops_deploy_stages_lookup_state" {
  description = "Map of state values across all devops_deploy_stages_lookup, keyed the same as var.devops_deploy_stages_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_devops_deploy_stages.devops_deploy_stages_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

