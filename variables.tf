variable "ami" {
  type = string
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
  default = "mykey"
}
