#README

	#WARNING: Computer will restart after running the script!
	#Before running, read the Notes section at the bottom of the document
	#To run this script, drag the .ps1 onto the Windows Powershell shortcut 

#Fully Working, Work On Run

	#Resets CMD to working condition
	Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\System" -Name "DisableCMD" -Value 0

	#Resets Registry Editing Utilities
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "DisableRegistryTools" -Value 0

	#Enables viewing of Hidden Folders
	Set-ItemProperty -Path "HKCU:\Woftware\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Value 1

#Fully Working, Work on Reboot

	#Resets Right-Click Menu
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoViewContextMenu" -Value 0

#Testing

	#Allows certain previously blocked programs
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "DisallowRun" -Value 0

	#Enables certain hidden Control Panel options
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "DisallowCpl" -Value 0

	#Enables Windows + [Key] Commands
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoWinKeys" -Value 0

	#Enables Advanced Folder Options
	Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoFolderOptions" -Value 0

#Required
	
	#Reboots to initialize changes
	Restart-Computer -ComputerName localhost -Force


#Notes

	#Updated 2 Apr 2015
	#Code courtesy of Caleb Smith
	#To suggest fixes for additional features, feel free to comment below
	#To disable certain fucntions, simply comment it out with a # in front
	#Settings will affect only the current user on the current machine
	#Licensed under GPLv3

#Changelog

	#25 Feb 2015
	#File constructed, added CMD & Registry abilities
	
	#14 Mar 2015
	#Added Right Click Menu & Force Reboot

	#02 Apr 2015
	#Added Windows Key Commands, changed HKCU to HKLM

	#14 Apr 2015
	#Removed HKLM, still not working

	#20 Apr 2015
	#Allowed previously blocke programs, Control Panel Options, and WinKey commands

	#08 May 2015
	#Added viewing Hidden Folders and Folder Options

#Suggestions
	
	#None
