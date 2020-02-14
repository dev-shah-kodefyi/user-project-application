variable "key_name" {
  default = "mykey"
}

variable "pvt_key" {
  default = "/root/.ssh/key.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-0e7a5aca0845681c1"
}
