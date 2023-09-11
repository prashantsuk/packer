

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

# Sources (Builders)
source "amazon-ebs" "ubuntu" {
  region        = var.region
  source_ami    = var.source_ami
  instance_type = var.instance_type
  ssh_username  = var.ssh_username
  ami_name      = "packer-ubuntu-ami-${local.timestamp}"
}

# Builds
build {
  sources = [
    "source.amazon-ebs.ubuntu",
  ]

  # Provisioners
  provisioner "shell" {
    inline = [
      "sleep 30",
      "sudo apt-get update",
      "sudo apt-get upgrade -y",
      "sudo apt-get install -y nginx",
    ]
  }

  ## Post-processors
  post-processor "manifest" {
  output = "manifest.json"
  strip_path = true
  }
}
