# Load the required assemblies for System.Windows.Forms
Add-Type -AssemblyName System.Windows.Forms

# Create a new input box using the InputBox class from System.Windows.Forms
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.VisualBasic") | Out-Null
$title = "Input Message Box"
$prompt = "Please enter your input:"
$input = [Microsoft.VisualBasic.Interaction]::InputBox($prompt, $title)

# Check if the user has entered any input
if (![string]::IsNullOrEmpty($input)) {
    Write-Host "You entered: $input"
} else {
    Write-Host "No input was provided."
}
