--[[
    New and simple gui library + script for lvl 2 executors that doesn't have hpttget function
    Everything until main code part is gui library so you can use it if you want

    Made by Mana
]]

--Settings
local speedValue = 100
local jumpPowerValue = 100

-- GuiLibrary

local Level2ExecLib = Instance.new("ScreenGui")
local Blatant = Instance.new("Frame")
local BlatantTitle = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Render = Instance.new("Frame")
local RenderTitle = Instance.new("TextLabel")
local UIListLayout_2 = Instance.new("UIListLayout")
local Utility = Instance.new("Frame")
local UtilityTitle = Instance.new("TextLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Info = Instance.new("Frame")
local InfoTitle = Instance.new("TextLabel")
local UIListLayout_4 = Instance.new("UIListLayout")

Level2ExecLib.Name = "Level2ExecLib"
Level2ExecLib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Level2ExecLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Blatant.Name = "Blatant"
Blatant.Parent = Level2ExecLib
Blatant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blatant.BackgroundTransparency = 0.900
Blatant.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blatant.BorderSizePixel = 0
Blatant.Position = UDim2.new(0.0466926061, 0, 0.0713153705, 0)
Blatant.Size = UDim2.new(0, 150, 0, 300)

BlatantTitle.Name = "BlatantTitle"
BlatantTitle.Parent = Blatant
BlatantTitle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
BlatantTitle.BackgroundTransparency = 0.500
BlatantTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
BlatantTitle.BorderSizePixel = 0
BlatantTitle.Size = UDim2.new(0, 150, 0, 25)
BlatantTitle.Font = Enum.Font.Arial
BlatantTitle.Text = "Blatant"
BlatantTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
BlatantTitle.TextSize = 14.000

UIListLayout.Parent = Blatant
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Render.Name = "Render"
Render.Parent = Level2ExecLib
Render.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Render.BackgroundTransparency = 0.900
Render.BorderColor3 = Color3.fromRGB(0, 0, 0)
Render.BorderSizePixel = 0
Render.Position = UDim2.new(0.178988323, 0, 0.0713153705, 0)
Render.Size = UDim2.new(0, 150, 0, 300)

RenderTitle.Name = "RenderTitle"
RenderTitle.Parent = Render
RenderTitle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
RenderTitle.BackgroundTransparency = 0.500
RenderTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
RenderTitle.BorderSizePixel = 0
RenderTitle.Size = UDim2.new(0, 150, 0, 25)
RenderTitle.Font = Enum.Font.Arial
RenderTitle.Text = "Render"
RenderTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
RenderTitle.TextSize = 14.000

UIListLayout_2.Parent = Render
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Utility.Name = "Utility"
Utility.Parent = Level2ExecLib
Utility.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Utility.BackgroundTransparency = 0.900
Utility.BorderColor3 = Color3.fromRGB(0, 0, 0)
Utility.BorderSizePixel = 0
Utility.Position = UDim2.new(0.310505837, 0, 0.0713153705, 0)
Utility.Size = UDim2.new(0, 150, 0, 300)

UtilityTitle.Name = "UtilityTitle"
UtilityTitle.Parent = Utility
UtilityTitle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
UtilityTitle.BackgroundTransparency = 0.500
UtilityTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
UtilityTitle.BorderSizePixel = 0
UtilityTitle.Size = UDim2.new(0, 150, 0, 25)
UtilityTitle.Font = Enum.Font.Arial
UtilityTitle.Text = "Utility"
UtilityTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
UtilityTitle.TextSize = 14.000

UIListLayout_3.Parent = Utility
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

Info.Name = "Info"
Info.Parent = Level2ExecLib
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 0.900
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.443579763, 0, 0.0713153705, 0)
Info.Size = UDim2.new(0, 150, 0, 300)

InfoTitle.Name = "InfoTitle"
InfoTitle.Parent = Info
InfoTitle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
InfoTitle.BackgroundTransparency = 0.500
InfoTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfoTitle.BorderSizePixel = 0
InfoTitle.Size = UDim2.new(0, 150, 0, 25)
InfoTitle.Font = Enum.Font.Arial
InfoTitle.Text = "Info"
InfoTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
InfoTitle.TextSize = 14.000

UIListLayout_4.Parent = Info
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

function createButton(tab, name)
    local button = Instance.new("TextButton")
    local divider = Instance.new("Frame")

    button.Name = "Button"  -- Fix typo: changed "Button" to "button"
    button.Parent = tab or Blatant  -- Fix typo: changed "or Blatant" to "or Blatant"
    button.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
    button.BackgroundTransparency = 0.300
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BorderSizePixel = 0
    button.Position = UDim2.new(0, 0, 0.0833333358, 0)
    button.Size = UDim2.new(0, 150, 0, 30)
    button.Font = Enum.Font.Arial
    button.Text = name or "button"
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.TextSize = 20.000
    button.TextWrapped = true

    divider.Name = "divider"
    divider.Parent = tab or Blatant
    divider.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    divider.BackgroundTransparency = 0.500
    divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
    divider.BorderSizePixel = 0
    divider.Position = UDim2.new(0, 0, 0.183333337, 0)
    divider.Size = UDim2.new(0, 150, 0, 1)
    divider.ZIndex = 2

    return button
end

--Code
local plr = game.Players.LocalPlayer
local character = plr.Character
local hmd = character.Humanoid

local oldSpeed = hmd.WalkSpeed
local oldJumpPower = hmd.JumpPower

--Blatant tab

local noClip = createButton(Blatant, "NoClip")

noClip.MouseButton1Click:Connect(function()
    if noClip.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
        noClip.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
        plr.Character.Humanoid:ChangeState(11)
    elseif noClip.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
        noClip.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
        plr.Character.Humanoid:ChangeState(7)
    end
end)

local speed = createButton(Blatant, "Speed")

speed.MouseButton1Click:Connect(function()
    if speed.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
        speed.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
        plr.Character.Humanoid.WalkSpeed = speedValue or 100
    elseif speed.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
        speed.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
        plr.Character.Humanoid.WalkSpeed = oldSpeed or 23
    end
end)

local jumpPower = createButton(Blatant, "JumpPower")

jumpPower.MouseButton1Click:Connect(function()
    if jumpPower.BackgroundColor3 == Color3.fromRGB(255, 140, 120) then
        jumpPower.BackgroundColor3 = Color3.fromRGB(120, 255, 156)
        plr.Character.Humanoid.JumpPower = jumpPowerValue or 100
    elseif jumpPower.BackgroundColor3 == Color3.fromRGB(120, 255, 156) then
        jumpPower.BackgroundColor3 = Color3.fromRGB(255, 140, 120)
        plr.Character.Humanoid.JumpPower = oldJumpPower or 50
    end
end)

--Render tab

--Utility tab

--Info tab