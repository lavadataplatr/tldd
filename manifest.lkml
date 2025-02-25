project_name: "tldd"

application: tldd {
  label: "tldd"
  url: "https://storage.googleapis.com/tldd_api_dashboards/bundle.js"
  # replace {{ pdf_bucket }} with the name of your GCS bucket
  entitlements: {
    use_clipboard: yes
    use_form_submit: yes
    # Find the Cloud Run URL in GCP Console, then add it here
    external_api_urls: ["https://console.cloud.google.com/storage/browser/tldd_api_dashboards"]
    global_user_attributes: ["https://console.cloud.google.com/storage/browser/tldd_api_dashboards"]
  }
}
