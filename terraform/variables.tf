variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable app_zone {
  description = "App zone"

  # Я не могу тут указать что-то вроед такого:
  # default     = "${var.region}-c"
  default = "europe-west1-c"
}

variable zone {
  description = "App zone"
  default     = "europe-west1-c"
}

variable disk_image {
  description = "Disk image"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "ssh private key"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit DB"
  default     = "reddit-db-base"
}
