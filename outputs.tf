output "eks_cluster_versions_lookup_cluster_type" {
  description = "Map of cluster_type values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.cluster_type if v.cluster_type != null && length(v.cluster_type) > 0 }
}
output "eks_cluster_versions_lookup_cluster_versions" {
  description = "Map of cluster_versions values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.cluster_versions if v.cluster_versions != null && length(v.cluster_versions) > 0 }
}
output "eks_cluster_versions_lookup_cluster_versions_only" {
  description = "Map of cluster_versions_only values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.cluster_versions_only if v.cluster_versions_only != null && length(v.cluster_versions_only) > 0 }
}
output "eks_cluster_versions_lookup_default_only" {
  description = "Map of default_only values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.default_only if v.default_only != null }
}
output "eks_cluster_versions_lookup_include_all" {
  description = "Map of include_all values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.include_all if v.include_all != null }
}
output "eks_cluster_versions_lookup_region" {
  description = "Map of region values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_cluster_versions_lookup_version_status" {
  description = "Map of version_status values across all eks_cluster_versions_lookup, keyed the same as var.eks_cluster_versions_lookup"
  value       = { for k, v in data.aws_eks_cluster_versions.eks_cluster_versions_lookup : k => v.version_status if v.version_status != null && length(v.version_status) > 0 }
}

