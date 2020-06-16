# variable

variable "name" {
  description = "Name of the cluster, e.g: seoul-dev-demo"
}

variable "vpc_id" {
  default = ""
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "subnet_azs" {
  type    = list(string)
  default = []
}

variable "launch_configuration_enable" {
  default = true
}

variable "launch_template_enable" {
  default = false
}

variable "launch_each_subnet" {
  default = false
}

variable "associate_public_ip_address" {
  default = false
}

variable "ami_id" {
  default = ""
}

variable "instance_type" {
  default = "t2.micro"
}

variable "mixed_instances" {
  type    = list(string)
  default = []
}

variable "enable_monitoring" {
  default = true
}

variable "ebs_optimized" {
  default = true
}

variable "volume_type" {
  default = "gp2"
}

variable "volume_size" {
  default = "8"
}

variable "min" {
  default = "1"
}

variable "max" {
  default = "5"
}

variable "on_demand_base" {
  default = "1"
}

variable "on_demand_rate" {
  default = "30"
}

variable "key_name" {
  default = ""
}

variable "key_path" {
  default = ""
}

variable "user_data" {
  default = ""
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "tags" {
  type = list(object({
    key                 = string
    value               = string
    propagate_at_launch = bool
  }))
  default = []
}
