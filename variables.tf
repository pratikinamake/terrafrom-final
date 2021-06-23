# variables.tf

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.10.0.0/22"
}


variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "subnet_cidrs_public" {
  description = "Subnet CIDRs for public subnets (length must match configured availability_zones)"
  default = ["10.10.0.0/25", "10.10.1.0/25"]
  type    = list(string)
}


variable "subnet_azs" {
  default = ["us-west-2a", "us-west-2b"]
}
variable "subnet_cidrs_private" {
  description = "Subnet CIDRs for public subnets (length must match configured availability_zones)"
  default = ["10.10.2.0/25", "10.10.2.128/25", "10.10.3.0/25", "10.10.3.128/25"]
  type    = list(string)
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "031173150068.dkr.ecr.us-west-2.amazonaws.com/web:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}
