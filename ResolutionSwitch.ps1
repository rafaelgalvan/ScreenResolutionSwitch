param(
    [int]$Width,
    [int]$Height,
    [int]$Refresh
)

# Apply the selected resolution with QRes
Start-Process "QRes\QRes.exe" -ArgumentList "/x:$Width /y:$Height /r:$Refresh"

# Show windows notification
Import-Module BurntToast
New-BurntToastNotification -AppLogo "image\logo512x512.png" -Text "Resolution changed", "$Width x $Height @ $Refresh Hz"
