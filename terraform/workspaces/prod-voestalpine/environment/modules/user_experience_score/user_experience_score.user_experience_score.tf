resource "dynatrace_user_experience_score" "user_experience_score" {
  consider_last_action                  = true
  consider_rage_click                   = true
  max_frustrated_user_actions_threshold = 33
  min_satisfied_user_actions_threshold  = 50
}
