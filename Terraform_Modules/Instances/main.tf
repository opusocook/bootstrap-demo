resource "aws_instance" "windows1" {
  instance_type = "${var.instance_type}"
  ami           = "${var.ami_id}"

  # Subnet Id
  subnet_id = "${var.subnet_id}"

  # The name of our EC2 keypair you've created and downloaded
  key_name = "${var.key_name}"

  # Our Security group to allow WinRM access
  security_groups = ["${var.prod_sg_id}"]

  tags = {
      Name = "${var.instance_name}"
  }

  # EC2 User Data
  user_data = <<EOF
  <powershell>
    mkdir -Path C:\\ANS
    Invoke-RestMethod -Uri https://raw.githubusercontent.com/LiamEllison/bootstrap-demo/master/PowerShell/script.ps1 -OutFile C:\\ANS\\script.ps1
    Invoke-Expression 'C:\\ANS\\script.ps1 -Parameter1 ${var.Parameter1} -Parameter2 ${var.Parameter2}'
  </powershell>
  EOF
}
