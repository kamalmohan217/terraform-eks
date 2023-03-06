resource "aws_eks_node_group" "eksnodegroup2" {
  cluster_name    = var.eks_cluster
  node_group_name = var.node_group_name2
  node_role_arn   = var.eks_nodegrouprole_name            #aws_iam_role.eksnoderole.arn
  subnet_ids      = var.subnet_ids
  instance_types  = [ var.instance_types[1] ]
  disk_size       = var.disk_size
  ami_type        = var.ami_type[0]
  capacity_type   = var.capacity_type[0]
  release_version = var.release_version[1]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }
  update_config {
    max_unavailable = 2
  }
  
  tags = {
    Environment = "Dev"
    Owner       = "Ops"
    Billing     = "MyProject"
  }

#  depends_on = [
#    aws_iam_role_policy_attachment.eksnode-AmazonEKSWorkerNodePolicy,
#    aws_iam_role_policy_attachment.eksnode-AmazonEKS_CNI_Policy,
#    aws_iam_role_policy_attachment.eksnode-AmazonEC2ContainerRegistryReadOnly,
#  ]
}
