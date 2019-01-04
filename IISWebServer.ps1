configuration IISWebServer
{   
    Import-DscResource –ModuleName 'PSDesiredStateConfiguration'  
  
    Node "TestIIS"  
    {   
        WindowsFeature IIS   
        {   
            Name = “Web-Server”                          
            Ensure = “Present”   
        }   
        WindowsFeature InstallAspDotNet45  
        {  
            Name = "Web-Asp-Net45"  
            Ensure = "Present"  
        }  
        WindowsFeature NET3.5  
        {  
            Name= "NET-Framework-Features"  
            Ensure = "Present"  
        }  
    }   
}  
IISWebServer

Start-DscConfiguration -Path IISWebServer -Wait -Verbose