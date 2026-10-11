variable "eks_cluster_versions_lookup" {
  description = <<EOT
Map of eks_cluster_versions_lookup, attributes below
Optional:
    - cluster_type
    - cluster_versions_only
    - default_only
    - include_all
    - region
    - version_status
EOT

  type = map(object({
    cluster_type          = optional(string)
    cluster_versions_only = optional(list(string))
    default_only          = optional(bool)
    include_all           = optional(bool)
    region                = optional(string)
    version_status        = optional(string)
  }))
}

