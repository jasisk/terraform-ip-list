variable "list_path" {
  default = ""
}

locals {
  list_path = "${var.list_path == "" ? "${path.root}/list.txt" : var.list_path}"
  ips = ["${compact(split(",", replace(file(local.list_path), "/(?m)^([0-9./]*)\\s*(#.*)?$\n/", "$1,")))}"]
}

output "ips" {
  value = ["${local.ips}"]
}
