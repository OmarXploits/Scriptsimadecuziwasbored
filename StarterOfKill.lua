printtoolnames = true  --If you do not know the tool's names that you have, set this to true. (CHECK THE CONSOLE!)
noclip = true          --If you want your character to be nocliped, set this to true. (WORKS BETTER IF ITS SET TO TRUE!)
hints = true           --Set this to true if you want that it shows you what it is doing right now.
target = "Target"      --Set your targets name. (FULL NAME ELSE IT WILL NOT WORK!) 
tool = "Tool"          --Put the Name of the tool you want to kill with. (If you don't know the names of the tools that you have in your inventory set "printtoolnames = true")


--This script is free to use, do anything with it. i will not obfuscate anything here. It would still be cool if you add credits. 
--Made by OmarXploits#4197
--[[
  ____        
 | __ ) _   _ 
 |  _ \| | | |
 | |_) | |_| |
 |____/ \__, |
        |___/ 
    __                     __  __      _       _ _       
  / _ \ _ __ ___   __ _ _ _\ \/ /_ __ | | ___ (_) |_ ___ 
 | | | | '_ ` _ \ / _` | '__\  /| '_ \| |/ _ \| | __/ __|
 | |_| | | | | | | (_| | |  /  \| |_) | | (_) | | |_\__ \
  \___/|_| |_| |_|\__,_|_| /_/\_\ .__/|_|\___/|_|\__|___/
                                |_|                      
]]--




if noclip == true then game.Players.LocalPlayer.Character.Humanoid:ChangeState(16) else game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) end
local a  = game.Players.LocalPlayer.Character.Humanoid:Clone()
local c = game.Players.LocalPlayer.Backpack:GetChildren()
if printtoolnames == true then
for i = 1, #c do
    print(i, c[i].Name)
end
end
local cin = Instance.new("Hint")
if hints == true then cin.Parent = game.Workspace else cin:Destroy() end
cin.Text = "Replacing Humanoid" --You can edit this for your own script!
game.Players.LocalPlayer.Character.Humanoid:Destroy()
a.Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Backpack[tool].Parent = game.Players.LocalPlayer.Character
cin.Text = "Searching for target... (if it takes more than 0.5 secs, player left or doesn't exist." --You can edit this for your own script!
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame
cin.Text = "Killing target" --You can edit this for your own script!
wait(0.5) --I don't recommend setting this under 0.5 because it might not work!
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500002, -485, 0)
wait(1)   --Set this to whatever you want its not so important its just how long the hint will stay.
cin:Destroy()
--End of the script
