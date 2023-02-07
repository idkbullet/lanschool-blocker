#What's new 4/26/21
#Pressing ESC safely closes the blocker



Add-Type -AssemblyName WindowsBase
Add-Type -AssemblyName PresentationCore

Write-Output "Welcome to bullet's LanSchool Air Terminator V1.2! Opened at "(get-date).ToString('T');
Write-Output "To abort at any time, press ESC."
while($true){
taskkill /im LSAirClient.exe /f
taskkill /im LSAirClientUI.exe /f
  $isDown = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::Escape)
  if ($isDown)
  {
    Write-Output "Blocker Deactivated. Reopen it to resume blocking"
    break
  }
  }
