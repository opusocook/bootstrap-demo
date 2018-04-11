# Default security group to access the instance and provide Internet access
resource "aws_security_group" "prod_sg" {
  name        = "prod_sg"
  description = "Prod Security Group"

  # RDP access from anywhere
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Any port to anywhere
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}