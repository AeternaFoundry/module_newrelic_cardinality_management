resource "newrelic_cardinality_management" "cardinality_managements" {
  for_each = var.cardinality_managements

  mode              = each.value.mode
  cardinality_limit = each.value.cardinality_limit

  dynamic "metric" {
    for_each = each.value.metric != null ? each.value.metric : []
    content {
      cardinality_limit = metric.value.cardinality_limit
      name              = metric.value.name
    }
  }
}

