local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/laagginq/ui-libraries/main/xaxas-notification/src.lua"))();
local notifications = notificationLibrary.new({            
    NotificationLifetime = 20, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 40,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = Color3.fromRGB(0, 0, 0)
});

notifications:BuildNotificationUI();
notifications:Notify("Discord Invite Copied To Clipboard: discord.gg/WAgwume3kB\nKEY IN DISCORD!!");
setclipboard("https://discord.gg/WAgwume3kB")
task.wait(1)
-- Key System UI with Fade In/Out + Logo in bottom-left of the UI
local TweenService = game:GetService("TweenService")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main background frame
local bg = Instance.new("Frame")
bg.Size = UDim2.new(0, 400, 0, 180)
bg.Position = UDim2.new(0.5, -200, 0.5, -90)
bg.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
bg.BorderSizePixel = 0
bg.BackgroundTransparency = 0.15
bg.Parent = screenGui

-- Outline for main UI
local bgStroke = Instance.new("UIStroke")
bgStroke.Color = Color3.fromRGB(153, 204, 255)
bgStroke.Thickness = 1.5
bgStroke.Transparency = 1
bgStroke.Parent = bg

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Enter Key"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 24
title.Font = Enum.Font.Roboto
title.TextTransparency = 1
title.ZIndex = 2
title.Parent = bg

-- Input box
local input = Instance.new("TextBox")
input.Size = UDim2.new(0.8, 0, 0, 40)
input.Position = UDim2.new(0.1, 0, 0.5, -20)
input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
input.BackgroundTransparency = 0.15
input.Text = ""
input.PlaceholderText = "Enter key here..."
input.TextColor3 = Color3.fromRGB(255, 255, 255)
input.TextSize = 18
input.Font = Enum.Font.Roboto
input.TextTransparency = 1
input.ZIndex = 2
input.Parent = bg

-- Submit button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.5, 0, 0, 35)
button.Position = UDim2.new(0.25, 0, 0.8, 0)
button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
button.BackgroundTransparency = 0.15
button.Text = "Submit"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 18
button.Font = Enum.Font.Roboto
button.TextTransparency = 1
button.ZIndex = 2
button.Parent = bg

-- Small Logo (inside bg, bottom-left corner only)
local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 120, 0, 120)
logo.Position = UDim2.new(0, -30, 1, -90)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://84227715422318"
logo.ImageTransparency = 1
logo.ScaleType = Enum.ScaleType.Fit
logo.ZIndex = 2
logo.Parent = bg

-- Fade in
local function fadeIn()
    TweenService:Create(bg, TweenInfo.new(0.6), {BackgroundTransparency = 0.15}):Play()
    TweenService:Create(bgStroke, TweenInfo.new(0.6), {Transparency = 0}):Play()
    TweenService:Create(title, TweenInfo.new(0.6), {TextTransparency = 0}):Play()
    TweenService:Create(input, TweenInfo.new(0.6), {BackgroundTransparency = 0.15, TextTransparency = 0}):Play()
    TweenService:Create(button, TweenInfo.new(0.6), {BackgroundTransparency = 0.15, TextTransparency = 0}):Play()
    TweenService:Create(logo, TweenInfo.new(0.6), {ImageTransparency = 0}):Play()
end

-- Fade out
local function fadeOut(callback)
    local fadeTween1 = TweenService:Create(bg, TweenInfo.new(0.6), {BackgroundTransparency = 1})
    local fadeTween2 = TweenService:Create(bgStroke, TweenInfo.new(0.6), {Transparency = 1})
    local fadeTween3 = TweenService:Create(title, TweenInfo.new(0.6), {TextTransparency = 1})
    local fadeTween4 = TweenService:Create(input, TweenInfo.new(0.6), {BackgroundTransparency = 1, TextTransparency = 1})
    local fadeTween5 = TweenService:Create(button, TweenInfo.new(0.6), {BackgroundTransparency = 1, TextTransparency = 1})
    local fadeTween6 = TweenService:Create(logo, TweenInfo.new(0.6), {ImageTransparency = 1})

    fadeTween1:Play()
    fadeTween2:Play()
    fadeTween3:Play()
    fadeTween4:Play()
    fadeTween5:Play()
    fadeTween6:Play()

    fadeTween1.Completed:Connect(function()
        if callback then callback() end
    end)
end

fadeIn()

-- Key check
local correctKey = "ABC123"

button.MouseButton1Click:Connect(function()
    if input.Text == correctKey then
        fadeOut(function()
            screenGui:Destroy()
            task.wait(1)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lelo0002/bytecore/main/bytecore.sol.lua"))()
        end)
    else
        input.Text = ""
        input.PlaceholderText = "Invalid Key!"
    end
end)
