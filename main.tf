resource "aws_instance" "my_ec2" {
  ami           = "ami-080e1f13689e07408"  # Ubuntu 22.04 LTS in us-east-1
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "TerraformEC2"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-demo-bucket-${random_id.suffix.hex}"
  force_destroy = true

  tags = {
    Name = "TerraformBucket"
  }
}


resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_iam_user" "my_user" {
  name = "terraform-user"
}
