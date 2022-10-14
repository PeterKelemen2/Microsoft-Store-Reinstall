# This script installs the dependencies for Microsoft Store
# And the Store itself
#
# Note: "App Installer" won't be installed

$packages = @(
    "Microsoft.NET.Native.Framework"
    "Microsoft.NET.Native.Runtime"
    "Microsoft.UI.Xaml"
    "Microsoft.VCLibs"
    # AppxBundle: "Microsoft.WindowsStore"
)

foreach ($package in $packages) {
    Write-Output "Installing $package"
    Add-AppxPackage -Path "$package.Appx"
}
	Add-AppxPackage -Path "Microsoft.WindowsStore.AppxBundle"