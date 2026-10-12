output "resource_monitors_id" {
  description = "Map of id values across all resource_monitors, keyed the same as var.resource_monitors except keys with no id are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_monitors_credit_quota" {
  description = "Map of credit_quota values across all resource_monitors, keyed the same as var.resource_monitors except keys with no credit_quota are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.credit_quota if v.credit_quota != null }
}
output "resource_monitors_end_timestamp" {
  description = "Map of end_timestamp values across all resource_monitors, keyed the same as var.resource_monitors except keys with no end_timestamp are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.end_timestamp if v.end_timestamp != null && length(v.end_timestamp) > 0 }
}
output "resource_monitors_frequency" {
  description = "Map of frequency values across all resource_monitors, keyed the same as var.resource_monitors except keys with no frequency are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "resource_monitors_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all resource_monitors, keyed the same as var.resource_monitors except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "resource_monitors_name" {
  description = "Map of name values across all resource_monitors, keyed the same as var.resource_monitors except keys with no name are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "resource_monitors_notify_triggers" {
  description = "Map of notify_triggers values across all resource_monitors, keyed the same as var.resource_monitors except keys with no notify_triggers are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.notify_triggers if v.notify_triggers != null && length(v.notify_triggers) > 0 }
}
output "resource_monitors_notify_users" {
  description = "Map of notify_users values across all resource_monitors, keyed the same as var.resource_monitors except keys with no notify_users are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.notify_users if v.notify_users != null && length(v.notify_users) > 0 }
}
output "resource_monitors_show_output" {
  description = "Map of show_output values across all resource_monitors, keyed the same as var.resource_monitors except keys with no show_output are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "resource_monitors_start_timestamp" {
  description = "Map of start_timestamp values across all resource_monitors, keyed the same as var.resource_monitors except keys with no start_timestamp are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.start_timestamp if v.start_timestamp != null && length(v.start_timestamp) > 0 }
}
output "resource_monitors_suspend_immediate_trigger" {
  description = "Map of suspend_immediate_trigger values across all resource_monitors, keyed the same as var.resource_monitors except keys with no suspend_immediate_trigger are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.suspend_immediate_trigger if v.suspend_immediate_trigger != null }
}
output "resource_monitors_suspend_trigger" {
  description = "Map of suspend_trigger values across all resource_monitors, keyed the same as var.resource_monitors except keys with no suspend_trigger are omitted"
  value       = { for k, v in snowflake_resource_monitor.resource_monitors : k => v.suspend_trigger if v.suspend_trigger != null }
}

