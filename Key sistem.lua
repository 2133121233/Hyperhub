local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hyper Hub KeySystem", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "HYPER Hub",
	Content = "Loading...",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "HYPER2749" -- You Put Your Key Here
_G.KeyInput = "string"

function MakeScriptHub()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/2133121233/Hyperhub/main/DISTRIBUTOR.lua"), true))() -- You Put Your Script Here

end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = ":D",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key",
        Content = ";(",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key Tab",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "coloque aqui!",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})

Tab:AddButton({
	Name = "Copy Key",
	Callback = function()
      		setclipboard("https://direct-link.net/1128702/hyper-hub-key-aistem") --This Will Copy The Link Of The Key
  	end    
})

Tab:AddButton({
	Name = "Dev Contact",
	Callback = function()
      		setclipboard("Discord: sanjirebaixado#8452") --This Will Copy The Contact
  	end    

})
