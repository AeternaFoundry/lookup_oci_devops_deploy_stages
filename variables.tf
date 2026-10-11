variable "devops_deploy_stages_lookup" {
  description = <<EOT
Map of devops_deploy_stages_lookup, attributes below
Optional:
    - compartment_id
    - deploy_pipeline_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id     = optional(string)
    deploy_pipeline_id = optional(string)
    display_name       = optional(string)
    state              = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

