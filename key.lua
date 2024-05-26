local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest",IntroText = "mm2"})
local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
_G.Key = "MGLR_vqvl_wLTu8O25UMY_1"
_G.KeyInput = "string"

function Makescr1ptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/srpitre1/srpite12/main/mm2sripte.lua"))()
end
Tab:AddTextbox({
	Name = "Key",
	Default = "Pls key",
	TextDisappear = true,
	Callback = function(Value)
     _G.KeyInput = Value
	end	  
})
Tab:AddButton({
	Name = "Проверить ключ",
	Callback = function()
      	if _G.KeyInput == _G.Key then
         Makescr1ptHub()
          end   
  	end    
})

OrionLib:MakeNotification({
	Name = "Title!",
	Content = "Pls Key",
	Image = "rbxassetid://4483345998",
	Time = 5
})
