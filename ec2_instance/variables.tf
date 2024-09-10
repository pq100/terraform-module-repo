variable "ami" {
  description = "type of instance"
  type = string
}

variable "instance_type" {
  description = "instance_type for instance"
  type = string
}

variable "key_name" {
  description = "key name for instance"
  type = string
}

variable "instance_name" {
  description = "instance name for instance"
  type = string
}

variable "security_group_id" {
  description = "id for assign to instance"
  type = string
}