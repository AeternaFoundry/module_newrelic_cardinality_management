output "cardinality_managements_id" {
  description = "Map of id values across all cardinality_managements, keyed the same as var.cardinality_managements except keys with no id are omitted"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cardinality_managements_cardinality_limit" {
  description = "Map of cardinality_limit values across all cardinality_managements, keyed the same as var.cardinality_managements except keys with no cardinality_limit are omitted"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.cardinality_limit if v.cardinality_limit != null }
}
output "cardinality_managements_metric" {
  description = "Map of metric values across all cardinality_managements, keyed the same as var.cardinality_managements except keys with no metric are omitted"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.metric if v.metric != null && length(v.metric) > 0 }
}
output "cardinality_managements_mode" {
  description = "Map of mode values across all cardinality_managements, keyed the same as var.cardinality_managements except keys with no mode are omitted"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.mode if v.mode != null && length(v.mode) > 0 }
}

