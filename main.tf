data "aws_eks_cluster_versions" "eks_cluster_versions_lookup" {
  for_each = var.eks_cluster_versions_lookup

  cluster_type          = each.value.cluster_type
  cluster_versions_only = each.value.cluster_versions_only
  default_only          = each.value.default_only
  include_all           = each.value.include_all
  region                = each.value.region
  version_status        = each.value.version_status
}

