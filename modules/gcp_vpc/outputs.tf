output "vpc_name" {
  description = "The name of the GCP VPC"
  value       = google_compute_network.this.name
}

output "subnet_name" {
  description = "The name of the GCP subnet"
  value       = google_compute_subnetwork.this.name
}
