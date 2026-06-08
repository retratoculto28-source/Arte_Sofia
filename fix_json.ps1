
$content = Get-Content "c:\Users\sm200\Downloads\Arte_Sofia\js\script.js" -Encoding UTF8 -Raw
$content = $content -replace "(?s)\{\s*`"id`":\s*24,.*?`"date`":\s*`"2026-05-29`"(?:,\s*`"specialStyle`":\s*`"contain`")?\s*\},?\s*", ""
$search = "`"imagePath`":  `"Porfólio/Design/Figma/Identidade Visual/Bloody Ruby/Icon\.jpg`",\r?\n\s*`"date`":  `"2026-05-29`"\r?\n\s*\},\r?\n"
$replacement = "`"imagePath`":  `"Porfólio/Design/Figma/Identidade Visual/Bloody Ruby/Icon.jpg`",`n        `"date`":  `"2026-05-29`"`n    },`n    {`n        `"id`":  24,`n        `"title`":  `"Bloody Ruby`",`n        `"description`":  `"`",`n        `"category`":  `"Design`",`n        `"subcategory`":  `"Figma`",`n        `"project`":  `"Bloody Ruby`",`n        `"imagePath`":  `"Porfólio/Design/Figma/Identidade Visual/Bloody Ruby/Bloody Ruby.png`",`n        `"date`":  `"2026-05-29`",`n        `"specialStyle`": `"contain`"`n    },`n"
$content = $content -replace $search, $replacement
Set-Content -Path "c:\Users\sm200\Downloads\Arte_Sofia\js\script.js" -Value $content -Encoding UTF8

