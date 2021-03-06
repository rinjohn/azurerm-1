variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "ttl" {
  description = "(required)"
  type        = number
}

variable "zone_name" {
  description = "(required)"
  type        = string
}

variable "record" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      port     = number
      priority = number
      target   = string
      weight   = number
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

