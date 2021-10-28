source "googlecompute" "basic-example" {
  project_id = "my project"
  source_image = "ubuntu-1804-bionic-v20210623"
  ssh_username = "ubuntu"
  zone = "us-central1-a"
}

build {
  sources = ["sources.googlecompute.basic-example"]

  provisioner "shell" {
    script = "install.sh"
  }
}
