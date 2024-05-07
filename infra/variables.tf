variable "github_users" {
  type    = list(string)
  default = ["theplat", "wayne868", "chester-tester"]
}

variable "github_progredo_bootcamp_pat" {
  type        = string
  description = "robs github personal access token from env var"
  sensitive   = true
}
