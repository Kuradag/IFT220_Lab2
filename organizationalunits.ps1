# brutforce script to make some organizational units

# you need to change "DC=ad,DC=jzchurch,DC=lan" to match your domain and update the JC initials to match or remove them

Write-HoJC -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name JC_Computers -Path "DC=AD,DC=jzchurch,DC=lan" -Description "JC Computers"
 New-ADOrganizationalUnit -Name WorkJCations -Path "OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=WorkJCations,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=WorkJCations,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=WorkJCations,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=WorkJCations,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=WorkJCations,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=WorkJCations,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=JC_Computers,DC=AD,DC=jzchurch,DC=lan"
New-ADOrganizationalUnit -Name JC_Groups -Path "DC=AD,DC=jzchurch,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name JC_Privileged_Accounts -Path "DC=AD,DC=jzchurch,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name JC_Users -Path "DC=AD,DC=jzchurch,DC=lan" -Description "Non-Privileged Accounts"
Write-HoJC -ForegroundColor yellow "Done creating OUs"
Write-HoJC -ForegroundColor yellow ""

Write-HoJC -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
# Create a Leadership group for the President and VPs to access reJCricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=JC_Groups,DC=AD,DC=jzchurch,DC=lan"
Write-HoJC -ForegroundColor yellow "Done creating groups"
Write-HoJC -ForegroundColor yellow ""
