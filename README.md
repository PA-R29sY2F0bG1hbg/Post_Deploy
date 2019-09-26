# Post_Deploy


![Post_Deploy_GUI](https://user-images.githubusercontent.com/18190054/65708528-13e17a80-e08f-11e9-9958-47d5aab71a66.png)
Post_Deploy is a Powershell GUI which aims to personalize a computer after a deploying 

#|: | Author:  Philippe-Alexandre Munch                           
#| :| Email:   --------------------------------                   
#|: | Purpose: Post_Deploy :)  in GUI Version                     
#| :|                                                             
#|: |                      						                  
#| :|                                                             
#|: |         		Date:05-Jan-2018                             
#|: |                                                      
#| :| 	/^(o.o)^\    Version: 1.7           	                  


<# Post_Deploy is a little tool to help technicians or administrators for gain time after a basic deployement or simply use Post_Deploy for install apps and add users #>
----------------------------------------------------------------------------------------------------------------------------------------
   
   
INFO
----
   
   - For Completly running all function launch Post_Deploy as Administrator
   
   - Using: Chocolatey for install or update apps after
   
   - Function:
       - Rename Computer + Join Computer To AD (Not Working yet)
       - Add Domain User Computer Administrator
       - Create Local User + Add local User Computer Administrator
       - List all chocolatey apps installed
       - Install chocolatey
       - Get the last Update of chocolatey
       - Update all apps installed by chocolatey
       - Install apps with chocoltey
       - Restart Computer
       
   - Modify "Choco_Install_Apps" to add or delete application to install with chocolatey
            
   - Folder Structure as coded in the script:
   
   
   
   ![Folder_Structure](https://user-images.githubusercontent.com/18190054/65708353-ae8d8980-e08e-11e9-9c0a-9ac5d9bf9095.png)

 
   - Tools Menue:

      ** For change the Call example juste change the path at line: 79, 89, 93, 97 **


      More Menue 


      $Moremenue.Text = "More"

      *Call More 1
      $DriverDell.Text = "Software Call 1"
      $DriverDell.add_click({start 'C:\Deployement\More_Software_Call_1.txt'})

      Tools Menue


      $Toolsmenue.Text = "Tools"

      *Call 1
      $Create_User.Text = "Software Call 1"
      $Create_User.add_click({start 'C:\Deployement\Software_Call_1.txt'})

      *Call 2
      $kaspersky.text = "Software Call 2 "
      $kaspersky.add_click({start 'C:\Deployement\Software_Call_2.txt'})

      *Call 3
      $Printer_State.Text = "Software Call 3"
      $Printer_State.add_click({start 'C:\Deployement\Software_Call_3.txt'})
