@(if ($this -is [Management.Automation.PSModuleInfo]) {
    if ($this.Description) {
        "<meta name='description' content='$([Web.HttpUtility]::HtmlAttributeEncode($this.Description))' />"
    }
    if ($this.PrivateData.PSData.IconUri) {

    }
} else {
    foreach ($property in $this.PSObject.Properties) {
        if ($property.Name -match ':') {
            "<meta property='$($property.Name)' content='$([Web.HttpUtility]::HtmlAttributeEncode($property.Value))' />"
        }
    }
}) -join [Environment]::Newline
