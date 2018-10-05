variable "env" {
  description = "Environment"
  default     = "dev"
}

variable "name" {
  description = "Name"
  default     = "dev"
}

variable "vpc_id" {
  description = "VPC ID that bastion host will reside in"
}

variable "subnets" {
  type        = "list"
  description = "Subnet ids for bastion"
}

variable "asg_desired_capacity" {
  description = "Worker ASG desired capacity"
  default     = 2
}

variable "asg_min_size" {
  description = "Worker ASG minimum size"
  default     = 2
}

variable "asg_max_size" {
  description = "Worker ASG masimum size"
  default     = 4
}

variable "instance_type" {
  description = "Worker instance type"
  default     = "t2.nano"
}

variable "root_volume_size" {
  description = "Worker root volume size"
  default     = "25"
}

variable "key_name" {
  description = "The key name that should be used for the instances in the autoscaling group"
  default     = "terraform_ec2_key"
}

variable "enable_monitoring" {
  description = "Enables/disables detailed monitoring"
  default     = true
}

variable "public_ip" {
  description = "Associate a public ip address with workers"
  default     = false
}

variable "autoscaling_enabled" {
  description = "Sets whether policy and matching tags will be added to allow autoscaling"
  default     = true
}

variable "additional_security_group_ids" {
  description = "A comma delimited list of additional security group ids to include in worker launch config"
  default     = ""
}

variable "protect_from_scale_in" {
  description = "Prevent AWS from scaling in, so that cluster-autoscaler is solely responsible"
  default     = true
}
