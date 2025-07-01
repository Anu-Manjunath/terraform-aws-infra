variable "aws_region" {
  default = "us-east-1"
}

variable "aws_access_key" {
  description = "Your AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "Your AWS Secret Key"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "flask-app"
}
