resource "google_compute_firewall" "allow-ssh" {
  project = var.project-id
  count   = length(var.regions) == 0 ? 0 : 1
  name    = format("fw-%s", google_compute_network.vpc-network[0].name)
  network = google_compute_network.vpc-network[0].id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_tags = var.source-tags
  target_tags = var.target-tags
}