data "oci_devops_deploy_stages" "devops_deploy_stages_lookup" {
  for_each = var.devops_deploy_stages_lookup

  compartment_id     = each.value.compartment_id
  deploy_pipeline_id = each.value.deploy_pipeline_id
  display_name       = each.value.display_name
  state              = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

