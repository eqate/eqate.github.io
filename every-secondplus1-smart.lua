local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Every Second You Get +1 Smart 🧠", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({Name = ".lua", Icon = "rbxassetid://4483345998", PremiumOnly = false})
Tab:AddSection({Name = "main"})
local win = false
Tab:AddButton({Name = "win", Callback = function()
    if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(225, 1, 0))
    end
end})
Tab:AddToggle({Name = "auto win", Default = false, Callback = function(Value)
    win = Value
    while win do
        if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(225, 1, 0))
        end
        task.wait()
    end
end})
Tab:AddToggle({Name = "auto rebirth", Default = false, Callback = function(Value)
    win = Value
    while win do
        game:GetService("ReplicatedStorage"):WaitForChild("Rebirth"):FireServer()
        task.wait()
    end
end})
OrionLib:Init()
