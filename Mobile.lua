--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_G.Ignore = {}
_G.Settings = {
	Players = {
		["Ignore Me"] = true,
		["Ignore Others"] = true,
		["Ignore Tools"] = true
	},
	Meshes = {
		NoMesh = false,
		NoTexture = false,
		Destroy = false
	},
	Images = {
		Invisible = true,
		Destroy = false
	},
	Explosions = {
		Smaller = true,
		Invisible = false, -- Not for PVP games
		Destroy = false -- Not for PVP games
	},
	Particles = {
		Invisible = true,
		Destroy = false
	},
	TextLabels = {
		LowerQuality = true,
		Invisible = false,
		Destroy = false
	},
	MeshParts = {
		LowerQuality = true,
		Invisible = false,
		NoTexture = false,
		NoMesh = false,
		Destroy = false
	},
	Other = {
		["FPS Cap"] = 360, -- true to uncap
		["No Camera Effects"] = true,
		["No Clothes"] = true,
		["Low Water Graphics"] = true,
		["No Shadows"] = true,
		["Low Rendering"] = true,
		["Low Quality Parts"] = true,
		["Low Quality Models"] = true,
		["Reset Materials"] = true,
	}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
-------------------------------------------------------------------------------
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- สร้าง ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MAKO_HUB_GUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- สร้าง TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 300, 0, 80) -- ขนาดกล่องข้อความ
textLabel.Position = UDim2.new(0.5, -150, 0.5, -40) -- ตรงกลางหน้าจอ (ลบครึ่งขนาดเพื่อให้อยู่กึ่งกลาง)
textLabel.BackgroundTransparency = 1 -- ไม่มีพื้นหลัง
textLabel.Text = "MAKO HUB"
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 50
textLabel.TextStrokeTransparency = 0 -- ขอบตัวหนังสือชัด
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel.Parent = screenGui

-- ฟังก์ชันเปลี่ยนสีแบบ RGB ไล่สี
local hue = 0
RunService.RenderStepped:Connect(function(deltaTime)
    hue = (hue + deltaTime * 0.2) % 1 -- หมุนสีช้า ๆ
    local color = Color3.fromHSV(hue, 1, 1) -- แปลง HSV เป็น RGB
    textLabel.TextColor3 = color
end)
----------------------------------------------------------------------------------------------------------KAITUN---------------------------------------
getgenv().KAITUN_CONFIG = {
    ["MAP Settings"] = {
        ["MapName"] = "West City"; -- "West City", "Leaf Village", "Land of the Sky", "Fujishima Island"
        ["MapID"] = 1; -- 1, 2, 3, 4, 5, 6
        ["UseInfinityIfCan"] = true; -- true, false
    };
    ["Webhook"] = {
        ["Url"] = "", -- webhook discord url
        ["Tag"] = { "" }; -- discord user id
    };
    ["Setup"] = {
        ["CanSpendGems"] = 5000; -- number
    };
    ["BackToLobbyEvery"] = 720; -- minutes
    ["LOWGRAPHIC"] = true; -- true, false
}
loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
