resource "aws_instance" "bastion" {
    ami = local.ami_id
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
    vpc_security_group_ids = [ local.bastion_sg_id ]
    subnet_id = local.private_subnet_id
    iam_instance_profile = aws_iam_instance_profile.bastion_admin.name
    tags = {
        Name = "${local.common_name}_bastion"
    }
}

resource "aws_iam_instance_profile" "bastion_admin" {
    name = "bastion_admin"
    role = "bastion-admin"
}