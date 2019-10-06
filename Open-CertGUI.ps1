<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Generate-CSR
.SYNOPSIS
    Generates private key and certificate signing request.
.DESCRIPTION
    Builds custom CertUtil configuration file based on user input to generate private key and certificate signing request. 
#>

$ScriptVer=Get-Content .\VERSION -Raw 

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '489,602'
$Form.text                       = "Form"
$Form.TopMost                    = $false

$RDNGroup                        = New-Object system.Windows.Forms.Groupbox
$RDNGroup.height                 = 123
$RDNGroup.width                  = 466
$RDNGroup.text                   = "RDN"
$RDNGroup.location               = New-Object System.Drawing.Point(12,17)

$LabelName                       = New-Object system.Windows.Forms.Label
$LabelName.text                  = "Name"
$LabelName.AutoSize              = $true
$LabelName.width                 = 100
$LabelName.height                = 10
$LabelName.location              = New-Object System.Drawing.Point(47,14)
$LabelName.Font                  = 'Microsoft Sans Serif,10'

$LabelOU                         = New-Object system.Windows.Forms.Label
$LabelOU.text                    = "Org. Unit"
$LabelOU.AutoSize                = $true
$LabelOU.width                   = 25
$LabelOU.height                  = 10
$LabelOU.location                = New-Object System.Drawing.Point(29,43)
$LabelOU.Font                    = 'Microsoft Sans Serif,10'

$LabelO                          = New-Object system.Windows.Forms.Label
$LabelO.text                     = "Organization"
$LabelO.AutoSize                 = $true
$LabelO.width                    = 25
$LabelO.height                   = 10
$LabelO.location                 = New-Object System.Drawing.Point(8,72)
$LabelO.Font                     = 'Microsoft Sans Serif,10'

$LabelCity                       = New-Object system.Windows.Forms.Label
$LabelCity.text                  = "City"
$LabelCity.AutoSize              = $true
$LabelCity.width                 = 100
$LabelCity.height                = 10
$LabelCity.location              = New-Object System.Drawing.Point(275,14)
$LabelCity.Font                  = 'Microsoft Sans Serif,10'

$LabelState                      = New-Object system.Windows.Forms.Label
$LabelState.text                 = "State"
$LabelState.AutoSize             = $true
$LabelState.width                = 25
$LabelState.height               = 10
$LabelState.location             = New-Object System.Drawing.Point(268,43)
$LabelState.Font                 = 'Microsoft Sans Serif,10'

$InputCN                         = New-Object system.Windows.Forms.TextBox
$InputCN.multiline               = $false
$InputCN.width                   = 150
$InputCN.height                  = 20
$InputCN.location                = New-Object System.Drawing.Point(92,10)
$InputCN.Font                    = 'Microsoft Sans Serif,10'

$InputOU                         = New-Object system.Windows.Forms.TextBox
$InputOU.multiline               = $false
$InputOU.width                   = 150
$InputOU.height                  = 20
$InputOU.location                = New-Object System.Drawing.Point(92,39)
$InputOU.Font                    = 'Microsoft Sans Serif,10'

$InputOrg                        = New-Object system.Windows.Forms.TextBox
$InputOrg.multiline              = $false
$InputOrg.width                  = 150
$InputOrg.height                 = 20
$InputOrg.location               = New-Object System.Drawing.Point(92,70)
$InputOrg.Font                   = 'Microsoft Sans Serif,10'

$InputCity                       = New-Object system.Windows.Forms.TextBox
$InputCity.multiline             = $false
$InputCity.width                 = 150
$InputCity.height                = 20
$InputCity.location              = New-Object System.Drawing.Point(309,10)
$InputCity.Font                  = 'Microsoft Sans Serif,10'

$InputState                      = New-Object system.Windows.Forms.TextBox
$InputState.multiline            = $false
$InputState.width                = 150
$InputState.height               = 20
$InputState.location             = New-Object System.Drawing.Point(309,39)
$InputState.Font                 = 'Microsoft Sans Serif,10'

$LabelCountry                    = New-Object system.Windows.Forms.Label
$LabelCountry.text               = "Country"
$LabelCountry.AutoSize           = $true
$LabelCountry.width              = 25
$LabelCountry.height             = 10
$LabelCountry.location           = New-Object System.Drawing.Point(254,72)
$LabelCountry.Font               = 'Microsoft Sans Serif,10'

$InputCountry                    = New-Object system.Windows.Forms.TextBox
$InputCountry.multiline          = $false
$InputCountry.width              = 150
$InputCountry.height             = 20
$InputCountry.location           = New-Object System.Drawing.Point(309,70)
$InputCountry.Font               = 'Microsoft Sans Serif,10'

$LabelVersion                    = New-Object system.Windows.Forms.Label
$LabelVersion.text               = "$ScriptVer"
$LabelVersion.AutoSize           = $true
$LabelVersion.width              = 25
$LabelVersion.height             = 10
$LabelVersion.location           = New-Object System.Drawing.Point(442,589)
$LabelVersion.Font               = 'Microsoft Sans Serif,6'
$LabelVersion.ForeColor          = "#585858"

$InputEmail                      = New-Object system.Windows.Forms.TextBox
$InputEmail.multiline            = $false
$InputEmail.width                = 150
$InputEmail.height               = 20
$InputEmail.location             = New-Object System.Drawing.Point(92,100)
$InputEmail.Font                 = 'Microsoft Sans Serif,10'

$LabelEmail                      = New-Object system.Windows.Forms.Label
$LabelEmail.text                 = "Email"
$LabelEmail.AutoSize             = $true
$LabelEmail.width                = 25
$LabelEmail.height               = 10
$LabelEmail.location             = New-Object System.Drawing.Point(49,104)
$LabelEmail.Font                 = 'Microsoft Sans Serif,10'

$Form.controls.AddRange(@($RDNGroup,$LabelVersion))
$RDNGroup.controls.AddRange(@($LabelName,$LabelOU,$LabelO,$LabelCity,$LabelState,$InputCN,$InputOU,$InputOrg,$InputCity,$InputState,$LabelCountry,$InputCountry,$InputEmail,$LabelEmail))




#Write your logic code here

[void]$Form.ShowDialog()
