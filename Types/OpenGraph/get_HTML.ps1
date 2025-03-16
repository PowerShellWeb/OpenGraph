@(if ($this -is [Management.Automation.PSModuleInfo]) {
    if ($this.Description) {
        "<meta name='description' content='$([Web.HttpUtility]::HtmlAttributeEncode($this.Description))' />"
    }
    if ($this.Author) {
        "<meta name='article:author' content='$([Web.HttpUtility]::HtmlAttributeEncode($this.Author))' />"
    }
    if ($this.PrivateData.PSData.IconUri) {
        "<meta property='og:image' content='$([Web.HttpUtility]::HtmlAttributeEncode($this.PrivateData.PSData.IconUri))' />"
    }    
} else {
    foreach ($property in $this.PSObject.Properties) {
        if ($property.Name -match ':') {
            "<meta property='$($property.Name)' content='$([Web.HttpUtility]::HtmlAttributeEncode($property.Value))' />"
        }
    }
}) -join [Environment]::Newline
