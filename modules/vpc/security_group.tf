resource "aws_security_group" "default_group" {
  description = "Default SG for EKS VPC"
  name        = "${var.environment}-default-sg"
  vpc_id      = aws_vpc.eks_vpc.id
  depends_on = [
    aws_vpc.eks_vpc
  ]


  tags = {
    "Name" = "${var.environment}-default-sg"
  }
}