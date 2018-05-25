provider "aws" {
      region = "ap-southeast-2"
      access_key = "${var.AWS_ACCESS_KEY}"
      secret_key = "${var.AWS.SECRET_KEY}"
  }
resource "aws_instance" "Instance_Creation" {
  ami = "ami-105546a"
  instance_type = "m4.xlarge"
  key_name = "${aws_key_Pair_testkey}"
  tags {
    name = "Test_Instance_creation"
  }
}
resource "aws_instance" "Instance_Deletion" {
  ami = "ami-105546a"
  instance_type = "t2.medium"
  key_name = "${aws_key_Pair_testkey}"
  tags {
    name = "Test_Instance_creation"
  }
}


