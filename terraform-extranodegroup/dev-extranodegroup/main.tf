module "extra_nodegroup2" {
  source = "../module-extranodegroup"
  subnet_ids = var.subnet_ids
  eks_cluster = var.eks_cluster
#  eks_iam_role_name = var.eks_iam_role_name
  node_group_name2 = var.node_group_name2
  eks_nodegrouprole_name = var.eks_nodegrouprole_name
  instance_types = var.instance_types
  disk_size = var.disk_size
  capacity_type = var.capacity_type
  ami_type = var.ami_type
  release_version =var.release_version
}
