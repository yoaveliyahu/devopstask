variable "apiGateway" {
  default = false
}

resource "virtualbox_vm" "ApiGateway" {
    count = "${var.apiGateway}"
    name = "ApiGateway"
    url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/20180206.0.0/providers/virtualbox.box"
    image = "./virtualbox-ubuntu.box"
    cpus = 2
    memory = "512 mib"

    network_adapter {
        type = "bridged",
        host_interface = "en0",

    }


}
resource "virtualbox_vm" "worker" {
    count = 1
    name = "${format("worker-%02d", count.index+1)}"
    url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/20180206.0.0/providers/virtualbox.box"
    image = "./virtualbox-ubuntu.box"
    cpus = 2
    memory = "512 mib"
    
    network_adapter {
        type = "bridged",
        host_interface = "en0",

    }


}