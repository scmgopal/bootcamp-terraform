module "network" {
  source      = "../modules/network"

  vpc-cidr-block      = "10.0.0.0/16"

  public-cidr-blocks  = "10.0.1.0/24"
  private-cidr-blocks = "10.0.2.0/24"
}

module "dns" {
  source = "../modules/dns"
  domain = "${var.domain}"
}
