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
            $value = $property.Value
            if ($value -is [DateTime]) {
                $value = $value.ToUniversalTime().ToString('o')
            }
            "<meta property='$($property.Name)' content='$([Web.HttpUtility]::HtmlAttributeEncode($value))' />"
        }
    }
}) -join [Environment]::Newline
