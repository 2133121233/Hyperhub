local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleFrame = Instance.new("Frame")
local OgeidXFrost = Instance.new("TextLabel")
local CloseGui = Instance.new("TextButton")
local KeyHere = Instance.new("TextBox")
local GetKey = Instance.new("TextButton")
local CheckKey = Instance.new("TextButton")

--Properties:

Main.Name = "Main"
Main.Parent = game:GetService("CoreGui")
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = Main
MainFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
MainFrame.BackgroundTransparency = 0.5
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.356999993, 0, 0.199000001, 0)
MainFrame.Size = UDim2.new(0, 366, 0, 464)

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = MainFrame
TitleFrame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
TitleFrame.BackgroundTransparency = 0.5
TitleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleFrame.BorderSizePixel = 0
TitleFrame.Size = UDim2.new(1, 0, 0, 57)

OgeidXFrost.Name = "OgeidXFrost"
OgeidXFrost.Parent = TitleFrame
OgeidXFrost.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OgeidXFrost.BackgroundTransparency = 1.0
OgeidXFrost.BorderSizePixel = 0
OgeidXFrost.Size = UDim2.new(1, 0, 1, 0)
OgeidXFrost.Font = Enum.Font.RobotoMono
OgeidXFrost.Text = "OGEIDXFROST"
OgeidXFrost.TextColor3 = Color3.fromRGB(72, 49, 143)
OgeidXFrost.TextScaled = true

CloseGui.Name = "CloseGui"
CloseGui.Parent = TitleFrame
CloseGui.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
CloseGui.BackgroundTransparency = 0.5
CloseGui.BorderSizePixel = 0
CloseGui.Position = UDim2.new(1, -30, 0, 0)
CloseGui.Size = UDim2.new(0, 30, 0, 30)
CloseGui.Font = Enum.Font.SourceSans
CloseGui.Text = "X"
CloseGui.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseGui.TextScaled = true
CloseGui.TextWrapped = true

KeyHere.Name = "KeyHere"
KeyHere.Parent = MainFrame
KeyHere.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
KeyHere.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyHere.BorderSizePixel = 0
KeyHere.Position = UDim2.new(0, 0, 0.24, 0)
KeyHere.Size = UDim2.new(1, 0, 0, 100)
KeyHere.Font = Enum.Font.Roboto
KeyHere.Text = ""
KeyHere.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyHere.TextSize = 14
KeyHere.TextWrapped = true

GetKey.Name = "GetKey"
GetKey.Parent = MainFrame
GetKey.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
GetKey.BackgroundTransparency = 0.5
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(0.1, 0, 0.45, 0)
GetKey.Size = UDim2.new(0.35, 0, 0, 40)
GetKey.Font = Enum.Font.SourceSans
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 18

CheckKey.Name = "CheckKey"
CheckKey.Parent = MainFrame
CheckKey.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
CheckKey.BackgroundTransparency = 0.5
CheckKey.BorderSizePixel = 0
CheckKey.Position = UDim2.new(0.55, 0, 0.45, 0)
CheckKey.Size = UDim2.new(0.35, 0, 0, 40)
CheckKey.Font = Enum.Font.SourceSans
CheckKey.Text = "Check Key"
CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKey.TextSize = 18

-- Scripts:

CloseGui.MouseButton1Click:Connect(function()
    Main:Destroy()
end)

CheckKey.MouseButton1Click:Connect(function()
    local LibVersion = "v2"
    local LibType = "roblox"
    local ServiceID = "hyperhub"
    local PandaAuth = loadstring(game:HttpGet('https://pandadevelopment.cloud/servicelib?service='..ServiceID..'&core='..LibType..'&param='..LibVersion))()
    
    PandaAuth:GetKey(ServiceID)
    
    if PandaAuth:ValidateKey(ServiceID, KeyHere.Text) then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/2133121233/Hyperhub/main/DISTRIBUTOR.lua")
        Main:Destroy()
    else
        print('not authenticated')
    end
end)

GetKey.MouseButton1Click:Connect(function()
    local LibVersion = "v2"
    local LibType = "roblox"
    local ServiceID = "hyperhub"
    local PandaAuth = loadstring(game:HttpGet('https://pandadevelopment.cloud/servicelib?service='..ServiceID..'&core='..LibType..'&param='..LibVersion))()
    
    setclipboard(PandaAuth:GetKey(ServiceID))
end)
