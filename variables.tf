variable "cardinality_managements" {
  description = <<EOT
Map of cardinality_managements, attributes below
Required:
    - mode
Optional:
    - cardinality_limit
    - metric (block):
        - cardinality_limit (required)
        - name (required)
EOT

  type = map(object({
    mode              = string
    cardinality_limit = optional(number)
    metric = optional(list(object({
      cardinality_limit = number
      name              = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cardinality_managements : (
        contains(["DEFAULT", "PER_METRIC"], v.mode)
      )
    ])
    error_message = "must be one of: \"DEFAULT\", \"PER_METRIC\""
  }
}

