variable "key_name" {
  default = "mykey"
}

variable "pvt_key" {
  default = "/root/.ssh/aditikey.pem"
}

variable "us-east-zones" {
  default = ["us-east-2"]
}

variable "sg-id" {
  default = "sg-04f14b8ba13c81733"
}
