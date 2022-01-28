# resource "github_repository" "mother_ship" {
#   name               = "mother-ship"
#   description        = "One Line Description"
#   visibility         = "public"
#   is_template        = true
#   gitignore_template = "Java"
#   license_template   = "mit"
#   auto_init          = true
# }

# resource "github_branch" "mother_ship_development" {
#   repository = github_repository.mother_ship.name
#   branch     = "development"
# }

# resource "github_branch_default" "mother_ship_default" {
#   repository = github_repository.mother_ship.name
#   branch     = github_branch.mother_ship_development.branch
# }