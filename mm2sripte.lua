local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
 
local Window = Library.CreateLib("MM2", "RJTheme3")
 
local Tab = Window:NewTab("Main")
 
local Section = Tab:NewSection("esp")
 
Section:NewButton("esp test", "esp на маредра и шерифа", function()
    local function getRoleColor(plr)
   if (plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife")) then
       return Color3.new(255, 0, 0)
   elseif (plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun")) then
       return Color3.new(0, 0, 255)
   else
       return Color3.new(0, 255, 0)
   end
end
 
while true do
   for _, v in pairs(game.Players:GetChildren()) do
       if v ~= game.Players.LocalPlayer and v.Character and not v.Character:FindFirstChild("Highlight") then
           Instance.new("Highlight", v.Character)
           v.Character.Highlight.FillTransparency = 0.5
           v.Character.Highlight.OutlineTransparency = 0.5
           v.Character.Highlight.FillColor = getRoleColor(v)
       elseif (v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Highlight")) then
           v.Character.Highlight.FillColor = getRoleColor(v)
       end
   end
   wait(0.1)
end
end)

local Tab = Window:NewTab("localplayers")

local Section = Tab:NewSection("localplayers")
Section:NewSlider("Walkspeed", "Быстро Бегать", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jumppower", "Сильно прыгаешь", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewButton("InfJump", "Бесконечный прыжок", function()
        game:GetService("UserInputService").JumpRequest:connect(function()
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")       
    end)
end)
