variable "resource_monitors" {
  description = <<EOT
Map of resource_monitors, attributes below
Required:
    - name
Optional:
    - credit_quota
    - end_timestamp
    - frequency
    - notify_triggers
    - notify_users
    - start_timestamp
    - suspend_immediate_trigger
    - suspend_trigger
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                      = string
    credit_quota              = optional(number)
    end_timestamp             = optional(string)
    frequency                 = optional(string)
    notify_triggers           = optional(set(number))
    notify_users              = optional(set(string))
    start_timestamp           = optional(string)
    suspend_immediate_trigger = optional(number)
    suspend_trigger           = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

