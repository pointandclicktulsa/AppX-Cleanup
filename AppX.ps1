# Geat rid of the awful Microsoft bloatware! Also consider turning off Windows store automatic updating, or outright disabling that piece of trash.
# This list of apps was pulled from a base Dell Optiplex 7050 Windows 10 Pro image, and a straight-from-Microsoft Windows 10 Pro install (not an OEM image).
# Add or remove apps as needed from the $apps array.
# This will only remove the apps for the current user and will not prevent provisioning of these apps back to new users. Add this feature.

$apps = @(
"KeeperSecurityInc.Keeper","89006A2E.AutodeskSketchBook","CAF9E577.Plex","Microsoft.XboxGameCallableUI","Microsoft.XboxSpeechToTextOverlay","Microsoft.XboxIdentityProvider",
"Microsoft.XboxGameOverlay","Microsoft.SkypeApp","A278AB0D.MarchofEmpires","Microsoft.MinecraftUWP","king.com.BubbleWitch3Saga","king.com.CandyCrushSodaSaga","Microsoft.Office.OneNote",
"D5EA27B7.Duolingo-LearnLanguagesforFree","Microsoft.Microsoft3DViewer","Microsoft.Xbox.TCUI","Microsoft.3DBuilder","AdobeSystemsIncorporated.AdobePhotoshopExpress",
"Microsoft.XboxGameCallableUI","Microsoft.XboxApp","Microsoft.WindowsMaps","Microsoft.BingNews","Microsoft.BingSports","Microsoft.BingWeather","Microsoft.ZuneVideo","Microsoft.ZuneMusic",
"microsoft.messaging","Microsoft.MicrosoftOfficeHub","46928bounde.EclipseManager","Microsoft.NetworkSpeedTest","ActiproSoftwareLLC.562882FEEB491","Microsoft.Office.Sway",
"Microsoft.OneConnect","Microsoft.People","Microsoft.MicrosoftSolitaireCollection","Microsoft.MicrosoftPowerBIForWindows","Microsoft.Print3D","PandoraMediaInc.29680B314EFC2"
)

foreach ($app in $apps) {Get-AppxPackage $app | Remove-AppxPackage}

$provisioned = @(Get-AppxProvisionedPackage -online | select PackageName)

# Nuclear option for de-provisioning, need to test.
# Get-AppXProvisionedPackage -Online | Remove-AppxProvisionedPackage -Online

# Original list from Reddit which inspired this below. Most of these do not work, as they don't have the full package name, but consider getting the true names
# so it can be utilised
<#
get-appxpackage microsoft.messaging | remove-appxpackage
get-appxpackage sway | remove-appxpackage
get-appxpackage commsphone | remove-appxpackage
get-appxpackage windowsphone remove-appxpackage
get-appxpackage phone | remove-appxpackage
get-appxpackage communicationsapps | remove-appxpackage
get-appxpackage people | remove-appxpackage
get-appxpackage Microsoft.ZuneMusic | remove-appxpackage
get-appxpackage Microsoft.ZuneVideo | remove-appxpackage
get-appxpackage zune | remove-appxpackage
get-appxpackage bingfinance | remove-appxpackage
get-appxpackage Microsoft.BingNews | remove-appxpackage
get-appxpackage bingsports | remove-appxpackage
get-appxpackage bingweather | remove-appxpackage
get-appxpackage bing | remove-appxpackage
get-appxpackage onenote | remove-appxpackage
get-appxpackage Microsoft.WindowsMaps | remove-appxpackage
get-appxpackage officehub | remove-appxpackage
get-appxpackage skypeapp | remove-appxpackage
get-appxpackage getstarted | remove-appxpackage
get-appxpackage 3dbuilder | remove-appxpackage
Get-AppxPackage drawboardpdf | Remove-AppxPackage
Get-AppxPackage freshpaint | Remove-AppxPackage
Get-AppxPackage nytcrossword | Remove-AppxPackage
Get-AppxPackage Microsoft.XboxApp | Remove-AppxPackage
Get-AppxPackage SurfaceHub | Remove-AppxPackage
Get-AppxPackage flipboard | Remove-AppxPackage
#>