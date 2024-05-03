resource "github_repository" "bootcamp" {
  name        = "bootcamp"
  description = "boots and tents"
  visibility  = "public"

  delete_branch_on_merge      = true
  squash_merge_commit_message = "COMMIT_MESSAGES"
  has_issues                  = true
  has_projects                = true
  has_wiki                    = true
  vulnerability_alerts        = false
}

resource "github_team_repository" "bootcamp" {
  team_id    = github_team.bootcamp.id
  repository = github_repository.bootcamp.name
  permission = "maintain"
}

resource "github_team" "bootcamp" {
  name        = "bootcamp"
  description = "boots and tents"
  privacy     = "closed"
}

resource "github_membership" "bootcamp" {
  for_each = toset(var.github_users)
  username = each.value
  role     = "member"
}

resource "github_team_membership" "bootcamp" {
  for_each = toset(var.github_users)
  team_id  = github_team.bootcamp.id
  username = each.value
  role     = "maintainer"
}
