resource "cloudflare_zero_trust_dlp_integration_entry" "zero_trust_dlp_integration_entries" {
  for_each = var.zero_trust_dlp_integration_entries

  account_id = each.value.account_id
  enabled    = each.value.enabled
  entry_id   = each.value.entry_id
  profile_id = each.value.profile_id
}

