module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags
}
#source é o parametro que informa de onde esta buscando, pode buscar tanto de um rep git, pode usar
#modulo feito por outra pessoa ou pode buscar um diretório que está local.
