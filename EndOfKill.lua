if noclip == true then game.Players.LocalPlayer.Character.Humanoid:ChangeState(16) else game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) end
local a  = game.Players.LocalPlayer.Character.Humanoid:Clone()
local c = game.Players.LocalPlayer.Backpack:GetChildren()
if printtoolnames == true then
local children = workspace:GetChildren()
for i = 1, #c do
    print(i, c[i].Name)
end
end
game.Players.LocalPlayer.Character.Humanoid:Destroy()
a.Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Backpack[tool].Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(500002, -485, 0)
wait(0.5)
game.Players.LocalPlayer.Character:findFirstChild("Tool"):Destroy()
