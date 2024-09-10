
variable "env" {
  type    = string
  default = "teksystems"
}

variable "managed_by" {
  type    = string
  default = "tf"
}

variable "owner" {
  type    = string
  default = "cc"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}