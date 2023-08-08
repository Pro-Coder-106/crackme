local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Window = OrionLib:MakeWindow({
    Name = "Frog Hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "Froghub"
})

local Key = "broHowDidyougetthis69?!"
local KeyInput = ""

function MakeScriptHub()
    print("Script hub function called")
    -- Add your script hub logic here
end

function ShowNotification(content)
    OrionLib:MakeNotification({
        Name = "Notification",
        Content = content,
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        KeyInput = Value
    end
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
        if KeyInput == Key then
            MakeScriptHub()
            ShowNotification("Logged in as " .. player.Name)
        else
            ShowNotification("Invalid key")
        end
    end
})
