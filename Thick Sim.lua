-- Gui to Lua
-- Version: 3.2

-- Instances:

local owlhubsexyaf = Instance.new("ScreenGui")
local circle = Instance.new("ImageLabel")
local logo = Instance.new("ImageLabel")
local uwu = Instance.new("TextLabel")

--Properties:

owlhubsexyaf.Name = "owlhubsexyaf"
owlhubsexyaf.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

circle.Name = "circle"
circle.Parent = owlhubsexyaf
circle.AnchorPoint = Vector2.new(0.5, 0.5)
circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
circle.BackgroundTransparency = 1.000
circle.ClipsDescendants = true
circle.Position = UDim2.new(0.5, 0, 0.5, 0)
circle.Image = "rbxassetid://200182847"
circle.ImageColor3 = Color3.fromRGB(18, 18, 18)

logo.Name = "logo"
logo.Parent = circle
logo.AnchorPoint = Vector2.new(0.5, 0.5)
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.ClipsDescendants = true
logo.Position = UDim2.new(0.5, 0, 0.5, 0)
logo.Size = UDim2.new(0, 150, 0, 150)
logo.ZIndex = 2
logo.Image = "http://www.roblox.com/asset/?id=4711644647"

uwu.Name = "uwu"
uwu.Parent = circle
uwu.AnchorPoint = Vector2.new(0.5, 1)
uwu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uwu.BackgroundTransparency = 1.000
uwu.Position = UDim2.new(0.5, 0, 0.912, 0)
uwu.Size = UDim2.new(0, 105, 0, 28)
uwu.Text = "DeadHub"
uwu.TextColor3 = Color3.fromRGB(255, 255, 255)
uwu.TextSize = 14.000

-- Scripts:

local function JFJJJ_fake_script() -- uwu.LocalScript 
	local script = Instance.new('LocalScript', uwu)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.01
	end
end
coroutine.wrap(JFJJJ_fake_script)()
local function FYJYZ_fake_script() -- owlhubsexyaf.LocalScript 
	local script = Instance.new('LocalScript', owlhubsexyaf)

	local owo = script.Parent.circle
	
	if game:GetService("RunService"):IsStudio() then repeat wait() until game:IsLoaded() else print('free sex') end
	wait(1)
	owo:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.7,false,function()
		owo:TweenSize(UDim2.new(0,250,0,250),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.7,false,function() 
			wait(3)
			owo:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,.7,false,function()
				print("yes")
			end)
		end)
	end)
end
coroutine.wrap(FYJYZ_fake_script)()

game.StarterGui:SetCore("SendNotification", {
Title = "Welcome "..game.Players.LocalPlayer.Name; -- the title (ofc)
Text = "Thanks for using DeadHub."; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
wait(6)
game.StarterGui:SetCore("SendNotification", {
Title = "Loaded"; -- the title (ofc)
Text = ""; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})



local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
library.options.underlinecolor = "rainbow"

local w = library:CreateWindow('Local Player')
w:Section('Local Player')
local old = workspace.CurrentCamera.FieldOfView
local s = w:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)
local b2 = w:Button('Reset FOV', function()
   s:Set(old)
end)

local box = w:Box('WalkSpeed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)
local b2 = w:Button('Reset WalkSpeed', function()
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

local box = w:Box('JumpPower', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(new)
end)
local b = w:Button('Reset JumpPower', function()
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
end)

local w = library:CreateWindow('Auto-Farm')
w:Section('Auto-Farm')

w:Toggle("Auto Punch", {flag = "toggle1"})
w:Toggle("Auto Thickness", {flag = "toggle2"})
w:Toggle("Auto Stomp", {flag = "toggle3"})
w:Toggle("Auto Sell", {flag = "toggle4"})

spawn(function()
while wait()do 
if w.flags.toggle1 then 
pcall(function()
game.ReplicatedStorage.Remotes.UseTool:FireServer("Punch")
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle2 then 
pcall(function()
game.ReplicatedStorage.Remotes.UseTool:FireServer("Food")
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle3 then 
pcall(function()
game.ReplicatedStorage.Remotes.UseTool:FireServer("Stomp")
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle4 then 
pcall(function()
game.ReplicatedStorage.Remotes.YieldSell:InvokeServer()
end)
end
end
end)


local w = library:CreateWindow('Auto-Buy')
w:Section('Auto-Buy')

w:Toggle("Auto-Buy Fist", {flag = "toggle1"})
w:Toggle("Auto-Buy Food", {flag = "toggle2"})
w:Toggle("Auto-Buy Stomach", {flag = "toggle3"})
w:Toggle("Auto-Buy Jumps", {flag = "toggle4"})
w:Toggle("Auto-Buy Rebrith", {flag = "toggle5"})

spawn(function()
while wait()do 
if w.flags.toggle1 then 
pcall(function()
local A_1 = "Fist"
game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(A_1)
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle2 then 
pcall(function()
local A_1 = "Food"
game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(A_1)
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle3 then 
pcall(function()
local A_1 = "Stomach"
game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(A_1)
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle4 then 
pcall(function()
local A_1 = "Jump"
game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(A_1)
end)
end
end
end)

spawn(function()
while wait()do 
if w.flags.toggle5 then 
pcall(function()
local A_1 = "Rebirth"
game:GetService("ReplicatedStorage").Remotes.RequestBuyAll:FireServer(A_1)
end)
end
end
end)

local w = library:CreateWindow('Teleports')
w:Section('Teleports')

-- Teleports

local b = w:Button('Veggie Meadows', function()
	local object = game:GetService("Workspace").Island1
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Bread Desert', function()
	local object = game:GetService("Workspace").Island2
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Icecream Tundra', function()
	local object = game:GetService("Workspace").Island3
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Pizza Wasteland', function()
	local object = game:GetService("Workspace").Island4
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Donut Galaxy', function()
	local object = game:GetService("Workspace").Island5
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Crystal Candyland', function()
	local object = game:GetService("Workspace").Island6
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Chocolate Realm', function()
	local object = game:GetService("Workspace").Island7
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)

local b = w:Button('Shroom Oasis', function()
	local object = game:GetService("Workspace").Island8
	local plrchar = game:GetService("Players").LocalPlayer.Character
	plrchar:MoveTo(object.Position)
end)


local w = library:CreateWindow('Extras')
w:Section('Extras')

local b = w:Button('Coin Pet', function()
while wait(1)
do local a = game.Workspace:GetDescendants()
 
for i,v in pairs(a) do
 if v.Name == "Coin" then
   v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame  
 end
end
end
end)

w:Section('UI')

w:Bind("Toggle GUI Key",
{flag = "Toggle", owo = true},
function()
library.toggled = not library.toggled;
for i, data in next, library.queue do
local pos = (library.toggled and data.p or UDim2.new(-1, 0, -0.5,0))
data.w:TweenPosition(pos, (library.toggled and 'Out' or 'In'), 'Quad', 0.15, true)
wait();
end
end)

-- Destroy GUI
local Kill = w:Button("Destroy GUI", function()
game:GetService("CoreGui").ScreenGui:Destroy()
end)

-- Anti-AFK
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local w = library:CreateWindow('Credits')
w:Label("UI - Wally")
w:Label("Helper - ReaperFrench")
w:Label("Scripts - SelfMade/V3RM")
w:Label("Obf - Sovw")
w:Label("DeadHub - Vuax")