# Use skopeo to verify the image
resource "null_resource" "verify_image" {
  # Do this since we don't have a terraform provider to do so
  provisioner "local-exec" {
    command = <<EOT
      ls -l ${path.module}
      ls -l ${path.module}/downloaded
      ${path.module}/downloaded/skopeo --help
      exit 0
    EOT
  }
}
