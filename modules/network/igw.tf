resource "aws_internet_gateway" "igw_eks" {
  vpc_id = aws_vpc.eks_lab01_vpc.id

  tags = merge(var.tags,
    { Name = "${var.project_name}-igw" }
  )
}

resource "aws_route_table" "eks_public_rtb" {
  vpc_id = aws_vpc.eks_lab01_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_eks.id
  }

  tags = merge(var.tags,
    { Name = "${var.project_name}-pub-rtb" }
  )
}
