local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Impossible Squid Game! Glass Bridge 2 By Northern Lights LTD", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({Name = ".lua", Icon = "rbxassetid://4483345998", PremiumOnly = false})
Tab:AddSection({Name = "main"})
local win = false
Tab:AddButton({Name = "win", Callback = function()
    if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-751, 76, -554))
    end
end})
Tab:AddToggle({Name = "auto win", Default = false, Callback = function(Value)
    win = Value
    while win do
        if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-751, 76, -554))
        end
        task.wait(1.5)
    end
end})
OrionLib:Init()
