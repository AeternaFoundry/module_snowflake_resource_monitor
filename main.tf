resource "snowflake_resource_monitor" "resource_monitors" {
  for_each = var.resource_monitors

  name                      = each.value.name
  credit_quota              = each.value.credit_quota
  end_timestamp             = each.value.end_timestamp
  frequency                 = each.value.frequency
  notify_triggers           = each.value.notify_triggers
  notify_users              = each.value.notify_users
  start_timestamp           = each.value.start_timestamp
  suspend_immediate_trigger = each.value.suspend_immediate_trigger
  suspend_trigger           = each.value.suspend_trigger

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

