variable "hvn" {
  type = object({
    hvn_id     = string
    self_link  = string
    cidr_block = string
  })
  description = "The HCP HVN to connect to the VPC"
}

variable "vpc_id" {
  type        = string
  description = "The ID of your AWS VPC"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of subnet IDs which should route to/from the the HVN's CIDR"
}

variable "route_table_ids" {
  type        = list(string)
  description = "A list of route table IDs which should route to the the HVN's CIDR"
}