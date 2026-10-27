output "cardinality_managements_id" {
  description = "Map of id values across all cardinality_managements, keyed the same as var.cardinality_managements"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.id }
}
output "cardinality_managements_cardinality_limit" {
  description = "Map of cardinality_limit values across all cardinality_managements, keyed the same as var.cardinality_managements"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.cardinality_limit }
}
output "cardinality_managements_metric" {
  description = "Map of metric values across all cardinality_managements, keyed the same as var.cardinality_managements"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.metric }
}
output "cardinality_managements_mode" {
  description = "Map of mode values across all cardinality_managements, keyed the same as var.cardinality_managements"
  value       = { for k, v in newrelic_cardinality_management.cardinality_managements : k => v.mode }
}

