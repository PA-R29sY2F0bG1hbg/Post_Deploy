#+-------------------------------------------------------------------+
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |
#|{>/-------------------------------------------------------------\<}|
#|: | Author:  Philippe-Alexandre Munch                           | :|
#| :| Email:   --------------------------------                   |: |
#|: | Purpose: Post_Deploy :)  in GUI Version                     | :|
#| :|                                                             |: |
#|: |                      						                  | :|
#| :|                                                             |: |
#|: |         		Date:05-Jan-2018                              | :
#|: |                            14:35                            |: |
#| :| 	/^(o.o)^\    Version: 1.7           	                  | :|
#|{>\-------------------------------------------------------------/<}|
#| = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = : = |
#+-------------------------------------------------------------------+

#################
# LOAD ASSEMBLY #
#################
Add-Type -AssemblyName Microsoft.VisualBasic
[void][reflection.assembly]::LoadWithPartialName("System.Windows.Forms")
[reflection.assembly]::LoadWithPartialName( "System.Windows.Forms")
[reflection.assembly]::LoadWithPartialName( "System.Drawing")
[System.Windows.Forms.Application]::EnableVisualStyles();

##########
# Object #
##########
$form = New-Object System.Windows.Forms.Form
$menuMain = New-Object System.Windows.Forms.MenuStrip
$Moremenue = New-Object System.Windows.Forms.ToolStripMenuItem
$Toolsmenue = New-Object System.Windows.Forms.ToolStripMenuItem
$DriverDell = New-Object System.Windows.Forms.ToolStripMenuItem
$Create_User = New-Object System.Windows.Forms.ToolStripMenuItem
$kaspersky = New-Object System.Windows.Forms.ToolStripMenuItem
$label = New-Object System.Windows.Forms.Label
$label2 = New-Object System.Windows.Forms.Label
$label3 = New-Object System.Windows.Forms.Label
$label4 = New-Object System.Windows.Forms.Label
$textbox = New-Object System.Windows.Forms.TextBox
$textbox2 = New-Object System.Windows.Forms.TextBox
$textbox2 = New-Object System.Windows.Forms.TextBox
$textbox3 = New-Object System.Windows.Forms.TextBox
$textbox4 = New-Object System.Windows.Forms.TextBox
$textbox5 = New-Object System.Windows.Forms.TextBox
$textbox6 = New-Object System.Windows.Forms.TextBox
$textbox7 = New-Object System.Windows.Forms.TextBox
$textbox8 = New-Object System.Windows.Forms.TextBox
$Okbutton = New-Object System.Windows.Forms.Button
$Okbutton3 = New-Object System.Windows.Forms.Button
$Okbutton4 = New-Object System.Windows.Forms.Button
$Okbutton5 = New-Object System.Windows.Forms.Button
$Okbutton6 = New-Object System.Windows.Forms.Button
$Okbutton7 = New-Object System.Windows.Forms.Button
$Okbutton8 = New-Object System.Windows.Forms.Button
$Okbutton8 = New-Object System.Windows.Forms.Button
$Okbutton9 = New-Object System.Windows.Forms.Button
$pbrTest1 = New-Object System.Windows.Forms.ProgressBar
$pbrTest2 = New-Object System.Windows.Forms.ProgressBar
$pbrTest16 = New-Object System.Windows.Forms.ProgressBar
$restartbutton = New-Object System.Windows.Forms.Button

########
# FORM #
######## 
$Icon = New-Object system.drawing.icon ("")
$form.Icon = $Icon
$form.Size = New-Object System.Drawing.Size (700, 450)
$form.text = "Post_Deploy"

###############
#  More Menue #
###############

$Moremenue.Text = "More"

# Dell Drivers
$DriverDell.Text = "Software Call 1"
$DriverDell.add_click({start 'C:\Deployement\More_Software_Call_1.txt'})

###############
# Tools Menue #
###############

$Toolsmenue.Text = "Tools"

# Call Creation user link
$Create_User.Text = "Software Call 1"
$Create_User.add_click({start 'C:\Deployement\Software_Call_1.txt'})

# Call Kaspersky exe
$kaspersky.text = "Software Call 2 "
$kaspersky.add_click({start 'C:\Deployement\Software_Call_2.txt'})

# Call Printer State
$Printer_State.Text = "Software Call 3"
$Printer_State.add_click({start 'C:\Deployement\Software_Call_3.txt'})

####################
# RENAME COMPUTER  #
####################

# VB Request
$computername = [Microsoft.VisualBasic.Interaction]::InputBox("Enter a comptuer name","Computer","$env:computername")

# Label "Rename Computer"
$label.size = New-Object System.Drawing.Size (100,50) 
$label.location = New-Object System.Drawing.Size (20,25)
$label.text = "Rename Computer"

# text Box "Computer Name"
$textbox.Size = New-Object System.Drawing.Size(100,110)
$textbox.Location = New-Object System.Drawing.Size (20,40)
$textbox.Text = $env:COMPUTERNAME
$textbox.ReadOnly = $true

###############
# DOMAIN INFO #
###############

# Domain Name VB
$Domainame = [Microsoft.VisualBasic.Interaction]::InputBox("Enter a Domain Name","Domain","$env:USERDNSDOMAIN")

# Label 2 "Join Domain"
$label2.Size = New-Object System.Drawing.Size(100,50)
$label2.Location = New-Object System.Drawing.Size(20,75)
$label2.Text = "Domain Name"

# text Box 2 "Domain Name"
$textbox2.Size = New-Object System.Drawing.Size(100,50)
$textbox2.Location = New-Object System.Drawing.Size (20,90)
$textbox2.Text = $Domainame
$textbox2.ReadOnly = $true

###################################
# Rename & Add computer to domain #
###################################
$Okbutton.Text = "OK"
$Okbutton.Size = New-Object System.Drawing.Size(40,20)
$Okbutton.Location = New-Object System.Drawing.Size(135,65)
$error.Clear()
$Okbutton.add_Click({Add-Computer -ComputerName $computername -DomainName $Domainame})


################
#  CHOCOLATEY  #
################

# Okbutton3 Choco Update
Function StartProgressBar2
{
	if($i16 -le 0){
	    $pbrTest16.Value = $i16
	    $script16:i += 1
	}
	
	}
$pbrTest16 = New-Object System.Windows.Forms.ProgressBar
$pbrTest16.Maximum = 140
$pbrTest16.Minimum = 0
$pbrTest16.Location = new-object System.Drawing.Size(20,390)
$pbrTest16.size = new-object System.Drawing.Size(100,10)
$i16 = 0	

$Okbutton3.Size = New-Object System.Drawing.Size(100,50)
$Okbutton3.Location = New-Object System.Drawing.Size(20,335)
$Okbutton3.Text = "CHOCO UPDATE APPS"
$Okbutton3.add_click({start "C:\Deployement\Choco_Update_All_Apps.cmd"
While ($i16 -le 140) {
	$pbrTest16.Value = $i16
	Start-Sleep -m 1
	"VALLUE EQ"
	$i16
	$i16 += 1
}})


# Okbuttom5 choco list apps installed
function Chocolist {
	$chocolist = choco list -lo | fl | Out-String
	if ($chocolist -match "choco"){$textbox4.text = $chocolist}
}

$Okbutton5.Size = New-Object System.Drawing.Size(100,50)
$Okbutton5.Location = New-Object System.Drawing.Size(20,120)
$Okbutton5.Text = "Choco list apps installed"
$Okbutton5.add_click({Chocolist})

# Okbutton6 choco install 
Function StartProgressBar
{
	if($i1 -le 0){
	    $pbrTest.Value = $i1
	    $script1:i += 1
	}
}
$pbrTest1.Maximum = 140
$pbrTest1.Minimum = 0
$pbrTest1.Location = new-object System.Drawing.Size(20,235)
$pbrTest1.size = new-object System.Drawing.Size(100,10)
$i1 = 0	
$Okbutton6.Size = new-object System.Drawing.size(100,50)
$Okbutton6.Location = New-Object System.Drawing.Size(20,180)
$Okbutton6.Text = "Install Choco"
$Okbutton6.add_click({start "C:\Deployement\Choco_Install.cmd"


While ($i1 -le 110) {
	$pbrTest1.Value = $i1
	Start-Sleep -m 1
	"VALLUE EQ"
	$i1
	$i1 += 1
}
})

# text box 4 choco list apps installed
$textbox4.Size = New-Object System.Drawing.Size(200,180)
$textbox4.Location = New-Object System.Drawing.Size(150,120)
$textbox4.Multiline = $true
$textbox4.ScrollBars = 'Vertical'
$textbox4.ReadOnly = $true

# Okbutton4 Check Last Update
function choco_date_update {
	$lastup = $env:ChocolateyLastPathUpdate 
	if ($lastup -eq $env:ChocolateyLastPathUpdate){$textbox3.text = $lastup}
}
$Okbutton4.Size = New-Object System.Drawing.Size(100,50)
$Okbutton4.Location = New-Object System.Drawing.Size(20,270)
$Okbutton4.add_click({choco_date_update})
$Okbutton4.Text = "LAST CHOCO UPDATE"

# textbox 3 last update
$textbox3.Size = New-Object System.Drawing.Size (150,150)
$textbox3.Location = New-Object System.Drawing.Size(150,315)
$textbox3.ReadOnly = $true

# Choco Install application
Function StartProgressBar
{
	if($i2 -le 0){
	    $pbrTest.Value = $i2
	    $script1:i += 1
	}
}
$pbrTest2.Maximum = 140
$pbrTest2.Minimum = 0
$pbrTest2.Location = new-object System.Drawing.Size(370,175)
$pbrTest2.size = new-object System.Drawing.Size(100,10)
$i2 = 0	
$Okbutton9.Location = New-Object System.Drawing.size (370,120)
$Okbutton9.Size = New-Object System.Drawing.Size(100,50)
$Okbutton9.Text = "Choco Install Apps"
$Okbutton9.add_click({start "C:\Deployement\Choco_Install_Apps.cmd"
	While ($i2 -le 110) {
		$pbrTest2.Value = $i2
		Start-Sleep -m 1
		"VALLUE EQ"
		$i2
		$i2 += 1
	}
})

###################################
# ADD ADUSER TO ADMIN LOCAL GROUP #
###################################

# Charge Variable VB AD USER
$ADUser = [Microsoft.VisualBasic.Interaction]::InputBox("Enter The Name ""UserName\Domain""","User\Trigramme", $Domainame)

# Label name ADD ADUser
$label3.Size = New-Object System.Drawing.Size(150,100)
$label3.Location =  New-Object System.Drawing.Size (235,28)
$label3.Text = "Add AD User"

# TextBox AD USR
$textbox5.Size = New-Object System.Drawing.Size(100,100)
$textbox5.Location = New-Object System.Drawing.Size(235,43)
$textbox5.Text = $ADUser
$textbox5.ReadOnly = $true

# OK Button ADD AD User
$Okbutton7.Size = New-Object System.Drawing.Size(40,20)
$Okbutton7.Location = New-Object System.Drawing.Size(345,43)
$Okbutton7.Text = "OK"
$Okbutton7.add_click({Add-LocalGroupMember -Group Administrateurs -Member $ADUser
$textbox6.Text = Get-LocalGroupMember Administrateurs})

# TextBox Confirmation ajout d'utilisateur
$textbox6.Size = New-Object System.Drawing.size(180,50)
$textbox6.Location = New-Object System.Drawing.Size(235,65)
$textbox6.ScrollBars = "Vertical"
$textbox6.Multiline = $true
$textbox6.ReadOnly = $true

##################
# ADD Local User #
##################

# Charge Variable VB AD USER
$LocalUser = [Microsoft.VisualBasic.Interaction]::InputBox("Enter A Name To Create A Local User (It's Add it also in the Administrators Local Group)", "Local User")
$LocalPassw0rdUser = [Microsoft.VisualBasic.Interaction]::InputBox("Enter Password For Local user") | ConvertTo-SecureString -AsPlainText -Force

# Label Text Add Local User
$label4.size = new-object System.Drawing.Size (150,100)
$label4.Location = New-Object System.Drawing.Size (490,28)
$label4.Text = "Add Local User"

# TextBox Add Local User
$textbox7.Size = New-Object System.Drawing.Size (100,100)
$textbox7.Location = New-Object System.Drawing.Size (490,43)
$textbox7.Text = $LocalUser
$textbox7.ReadOnly = $true

# Ok Button Validation Creation User + Add Admin Local Group
$Okbutton8.Size = New-Object System.Drawing.Size (40,20)
$Okbutton8.Location = New-Object System.Drawing.Size(600,43)
$Okbutton8.Text = "OK"
$Okbutton8.add_click({New-LocalUser -Name $LocalUser -Password $LocalPassw0rdUser
Add-LocalGroupMember -Group Administrateurs -Member $LocalUser
$textbox8.text = Get-LocalGroupMember -Name Administrateurs})

# TextBox Result of Add Local User to Admin Local Group
$textbox8.size = New-Object System.Drawing.Size (180,50)
$textbox8.Location = new-object System.Drawing.Size(490,65)
$textbox8.ScrollBars = "Vertical"
$textbox8.Multiline = $true
$textbox8.ReadOnly = $true

##################
# Restart Button #
##################
$restartbutton.size = New-Object System.Drawing.size(60,20)
$restartbutton.Location = New-Object System.Drawing.Size(360,380)
$restartbutton.text = "Restart"
$restartbutton.add_click({shutdown -r -t 05})

###############
# Show result #
###############
$form.Controls.add($restartbutton)
$form.Controls.Add($Okbutton)
$form.controls.Add($Okbutton3)
$form.Controls.Add($Okbutton4)
$form.Controls.Add($Okbutton5)
$form.controls.Add($Okbutton6)
$Form.Controls.Add($Okbutton7)
$Form.Controls.Add($Okbutton8)
$form.Controls.Add($Okbutton9)
$form.controls.Add($pbrTest1)
$form.controls.Add($pbrTest16)
$form.Controls.Add($pbrTest2)
$form.controls.Add($textbox)
$form.Controls.Add($textbox2)
$form.controls.Add($textbox3)
$form.controls.Add($textbox4)
$form.Controls.add($textbox5)
$form.Controls.add($textbox6)
$form.Controls.add($textbox7)
$form.Controls.add($textbox8)
$form.controls.add($menuMain)
$menuMain.items.add($Moremenue)
$menuMain.items.add($Toolsmenue)
$Toolsmenue.DropDownItems.Add($Printer_State)
$Toolsmenue.DropDownItems.Add($Create_User)
$Toolsmenue.DropDownItems.Add($kaspersky)

# $Toolsmenue.DropDownItems.add
$Moremenue.DropDownItems.Add($DriverDell)
$form.Controls.Add($label)
$form.Controls.Add($label2)
$form.controls.Add($label3)
$form.controls.Add($label4)
$form.Add_Shown( { $form.Activate() } )
$form.ShowDialog()