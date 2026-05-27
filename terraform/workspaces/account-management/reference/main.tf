module "iam_group" {
  source = "./modules/iam_group"
}

module "iam_policy" {
  source = "./modules/iam_policy"
}

module "iam_policy_bindings" {
  source = "./modules/iam_policy_bindings"
}

module "iam_policy_bindings_v2" {
  source = "./modules/iam_policy_bindings_v2"
}

module "iam_policy_boundary" {
  source = "./modules/iam_policy_boundary"
}

