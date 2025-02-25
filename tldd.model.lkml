connection: "looker_gen_ai"

include: "/views/**/*.view.lkml"


access_grant: insightsiQ {
  user_attribute: insightsiq
  allowed_values: ["No"]
}


explore: oracleebsap_hold_codes{
  label: "Test TLDD"
  required_access_grants: [insightsiQ]
}
