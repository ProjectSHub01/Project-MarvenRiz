local ScreenGui1 = Instance.new("ScreenGui")
local ImageButton1 = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui1.Name = "ImageButton"
ScreenGui1.Parent = game.CoreGui
ScreenGui1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton1.Parent = ScreenGui1
ImageButton1.BackgroundTransparency = 1
ImageButton1.BorderSizePixel = 0
ImageButton1.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton1.Size = UDim2.new(0, 50, 0, 50)
ImageButton1.Draggable = true
ImageButton1.Image = "rbxassetid://71208734479010"
UICorner.Parent = ImageButton1

ImageButton1.MouseButton1Down:Connect(function()
    local dupeGui = game.CoreGui:FindFirstChild("Dupe MarvenRiz X")
    if dupeGui and dupeGui:FindFirstChild("Frame") then
        local frame = dupeGui.Frame
        frame.Visible = not frame.Visible
    end
end)

local _s = Instance.new("ScreenGui", game.CoreGui)
local _f1 = Instance.new("Frame")
local _f2 = Instance.new("Frame")
local _f3 = Instance.new("Frame")
local _c1 = Instance.new("UICorner")
local _c2 = Instance.new("UICorner")
local _img1 = Instance.new("ImageLabel")
local _lb1 = Instance.new("TextLabel")
local _lb2 = Instance.new("TextLabel")
local _stk1 = Instance.new("UIStroke")
local _stk2 = Instance.new("UIStroke")
local _Lyt1 = Instance.new("UIListLayout")


_s.Name = "Dupe MarvenRiz X"
_f1.Size = UDim2.new(0, 330, 0, 210)
_f1.Position = UDim2.new(0.5, -165, 0.5, -105)
_f1.BackgroundColor3 = Color3.new(0, 0, 0)
_f1.BackgroundTransparency = 0.2
_f1.Parent = _s

_c1.CornerRadius = UDim.new(0, 15)
_c1.Parent = _f1

_img1.Size = UDim2.new(0, 50, 0, 50)
_img1.Position = UDim2.new(0, 5, 0, 5)
_img1.BackgroundTransparency = 1
_img1.Image = "rbxassetid://71208734479010"
_img1.ZIndex = 2
_img1.Parent = _f1

_lb1.Size = UDim2.new(0, 200, 0, 50)
_lb1.Position = UDim2.new(0, 25, 0, -5)
_lb1.BackgroundTransparency = 1
_lb1.Text = "MarvenRiz X"
_lb1.TextColor3 = Color3.fromRGB(255, 0, 0)
_lb1.Font = Enum.Font.SourceSansBold
_lb1.TextSize = 30
_lb1.ZIndex = 1
_lb1.Parent = _f1

_lb2.Size = UDim2.new(0, 200, 0, 25)
_lb2.Position = UDim2.new(0, 3, 0, 25)
_lb2.BackgroundTransparency = 1
_lb2.Text = "Version : Free"
_lb2.TextColor3 = Color3.fromRGB(255, 255, 255)
_lb2.Font = Enum.Font.SourceSans
_lb2.TextSize = 18
_lb2.ZIndex = 1
_lb2.Parent = _f1
_stk1.Thickness = 1
_stk1.Color = Color3.fromRGB(255, 0, 0)
_stk1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_stk1.Parent = _f1

_f2.Size = UDim2.new(0, 310, 0, 140)
_f2.Position = UDim2.new(0, 10, 0, 60)
_f2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
_f2.BackgroundTransparency = 0
_f2.Parent = _f1
_c2.CornerRadius = UDim.new(0, 10)
_c2.Parent = _f2
_stk2.Thickness = 1
_stk2.Color = Color3.fromRGB(120, 0, 0)
_stk2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_stk2.Parent = _f2

_f3.Size = UDim2.new(1, -20, 1, -20)
_f3.Position = UDim2.new(0, 10, 0, 10)
_f3.BackgroundTransparency = 1
_f3.Parent = _f2
_Lyt1.SortOrder = Enum.SortOrder.LayoutOrder
_Lyt1.Padding = UDim.new(0, 0.1)
_Lyt1.VerticalAlignment = Enum.VerticalAlignment.Top
_Lyt1.Parent = _f3

local function LabelText(text, color)
	local _tx1 = Instance.new("TextLabel")
    _tx1.Size = UDim2.new(1, 0, 0, 17)
    _tx1.BackgroundTransparency = 1
    _tx1.Text = text
    _tx1.TextColor3 = color
    _tx1.Font = Enum.Font.SourceSans
    _tx1.TextSize = 17
    _tx1.TextXAlignment = Enum.TextXAlignment.Left
    _tx1.Parent = _f3
	return _tx1
end
local function SetText(label, newText, newColor)
	if label and label:IsA("TextLabel") then
		if newText then
			label.Text = newText
		end
		if newColor then
		label.TextColor3 = newColor
		end
	end
end
local NameP = game.Players.LocalPlayer.Name
LabelText("⭐ Name: "..NameP, Color3.fromRGB(255, 255, 255))
local PingT = LabelText("", Color3.fromRGB(0, 150, 255))
local Status = LabelText("", Color3.fromRGB(128, 128, 128))
local Money = LabelText("", Color3.fromRGB(128, 128, 128))
task.spawn(function()
	while wait() do
		pcall(function()
			local ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
			if ping > 9999 then
				SetText(PingT, "🔮 Ping Server: "..ping.." [🔴]", Color3.fromRGB(255, 0, 0))
			elseif ping > 1000 then
				SetText(PingT, "🔮 Ping Server: "..ping.." [🟡]", Color3.fromRGB(255, 255, 0))
			else
				SetText(PingT, "🔮 Ping Server: "..ping.." [🟢]", Color3.fromRGB(0, 255, 0))
			end
		end)
	end
end)
if game.PlaceId == 126884695634066 then
	local lastTick = tick()
	local index = 1
	local dots = {".", "..", "..."}
	while wait(0.1) do
	game:GetService("TeleportService"):TeleportToPlaceInstance(91867617264223, "9fecb0a9-0b54-416d-9ffa-bb05adcbb0ff", game.Players.LocalPlayer)
	game:GetService("TeleportService"):TeleportToPlaceInstance(91867617264223, "0207332a-8a7e-4b84-8ab5-0652d33a4790", game.Players.LocalPlayer)
	game:GetService("TeleportService"):TeleportToPlaceInstance(91867617264223, "cda8bbc6-dcd0-416d-841c-167d26121c0f", game.Players.LocalPlayer)
	if tick() - lastTick >= 1 then
		lastTick = tick()
		SetText(Status, "🌍 Status: Finding a server" .. dots[index], Color3.fromRGB(128, 128, 128))
		index = index + 1
		if index > #dots then index = 1 end
    end
	end
else
	if game.PlaceId == 91867617264223 then
		local RunService = game:GetService("RunService")
		RunService.Heartbeat:Connect(function()
			SetText(Money, "💸 Money: "..game:GetService("Players").LocalPlayer.PlayerGui.Sheckles_UI.TextLabel.Text, Color3.fromRGB(0, 255, 0))
			for _,v in pairs(game.Players:GetPlayers()) do
				if v ~= game.Players.LocalPlayer and v.Character:FindFirstChildOfClass("Tool") and v.Character:FindFirstChildOfClass("Tool"):GetAttribute("ItemType") == "Pet" then
					for i = 1,3 do
					game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("SellPet_RE"):FireServer(v.Character:FindFirstChildOfClass("Tool"))
					end;
					SetText(Status, "🌍 Status: Dupe Money[💸]", Color3.fromRGB(128, 128, 128))
				end
			end
		end)
	end
end




