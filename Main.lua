    ['__script'] = function(m) return "https://raw.githubusercontent.com/ZoiIntra/__Script/main/__Alchemy/__"..m..".lua" end;
    ['__load'] = function(s) loadstring(game:HttpGet(s))() end;
    ['__ismobile'] = function()
        local uis = game:GetService("UserInputService")
        if uis.TouchEnabled and not uis.KeyboardEnabled and not uis.MouseEnabled then return true
        elseif not uis.TouchEnabled and uis.KeyboardEnabled and uis.MouseEnabled then return false end
    end;
    ['__executor'] = tostring(identifyexecutor())
}
local isDelta = function()
    local exec = string.lower(__f['__executor'])
    if exec == "delta" or string.find(exec, "delta") then
        return true
    else
        return false
    end
end
if _G.run_time then game:GetService("Players").LocalPlayer:Kick("[ Error : 429 ] Too Many Execute") end
if _G.StreamerMode then
    pcall(function()
        local a_protect = game:GetDescendants()
        local n_protect =  game:GetService("Players").LocalPlayer.DisplayName
        local f_protect =  game:GetService("Players").LocalPlayer.Name
        for i=1,#a_protect do
            if a_protect[i].ClassName == "TextLabel" then
                if a_protect[i].Text == n_protect then
                    a_protect[i].Text = "By: @vanthanhisme_"
                elseif a_protect[i].Text == "@"..f_protect then
                    a_protect[i].Text = "@vanthanhisme_"
                end
            end
        end
    end)
end;_G.Alchemy = premium or getgenv().premium
spawn(function()
    pcall(function()
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end)
end)
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__UI1.lua"))()
local Notification = UILibrary:Notification();
Notification.new({
	Title = "Box Zalo Của Alex",
	Description = "Chào Mừng Đến Box Zalo Alex",
	Dialog = true,
	Buttons = {
		{
			Title = "Sure!",
			Callback = function()
				print('zalo.me/g/vlayau686')
                if setclipboard then
                    setclipboard("Dont for get to join > https://zalo.me/g/vlayau686")
                end
			end,
		},
		{
			Title = "No",
			Callback = function()
				print('zalo.me/g/vlayau686')
			end,
		}
	}
})
local loadDeltaWarn = function()
    local warnING = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local Submit = Instance.new("TextButton")
    local SubmitCorner = Instance.new("UICorner")
    local Information = Instance.new("TextLabel")
    local Header = Instance.new("TextLabel")
    warnING.Name = "warnING"
    warnING.Parent = game:WaitForChild("CoreGui")
    warnING.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = warnING
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Position = UDim2.new(0.499723464, 0, 0.499925047, 0)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.ZIndex = 0
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = MainFrame
    ImageLabel.Parent = MainFrame
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.498768479, 0, 0.493386239, 0)
    ImageLabel.Size = UDim2.new(0, 188, 0, 188)
    ImageLabel.Image = "rbxassetid://84740298420180"
    ImageLabel.ImageTransparency = 0.900
    Submit.Name = "Submit"
    Submit.Parent = MainFrame
    Submit.AnchorPoint = Vector2.new(0.5, 0.5)
    Submit.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
    Submit.BackgroundTransparency = 0.800
    Submit.Position = UDim2.new(0.498482376, 0, 0.773373246, 0)
    Submit.Size = UDim2.new(0, 355, 0, 30)
    Submit.Font = Enum.Font.GothamBold
    Submit.Text = "I understand but I want to continue using Delta."
    Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
    Submit.TextSize = 14.000
    SubmitCorner.CornerRadius = UDim.new(0, 5)
    SubmitCorner.Name = "SubmitCorner"
    SubmitCorner.Parent = Submit
    Information.Name = "Information"
    Information.Parent = MainFrame
    Information.BackgroundColor3 = Color3.fromRGB(255, 254, 216)
    Information.BackgroundTransparency = 1.000
    Information.ClipsDescendants = true
    Information.Position = UDim2.new(0.0834580585, 0, 0.340372086, 0)
    Information.Size = UDim2.new(0, 336, 0, 60)
    Information.Font = Enum.Font.GothamBold
    Information.Text = "Hello!, we detected that your executor is Delta, we recommend using Codex, Arceus or Cubix, cuz Delta not Support Our Scripts."
    Information.TextColor3 = Color3.fromRGB(255, 254, 216)
    Information.TextSize = 16.000
    Information.TextWrapped = true
    Information.TextYAlignment = Enum.TextYAlignment.Top
    Header.Name = "Header"
    Header.Parent = MainFrame
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.BackgroundTransparency = 1.000
    Header.ClipsDescendants = true
    Header.Position = UDim2.new(0.0295566507, 0, 0.128732026, 0)
    Header.Size = UDim2.new(0, 381, 0, 39)
    Header.Font = Enum.Font.GothamBold
    Header.Text = "Executor Warning"
    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header.TextSize = 32.000
    Submit.MouseButton1Click:Connect(function()
        warnING.Enabled = false
    end)
    wait(); MainFrame:TweenSize(UDim2.new(0, 406, 0, 189), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
end
_G.run_time = true
pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__Finded.lua"))() end)
if isDelta() then loadDeltaWarn() end
if _G.Aimbot then __f['__load'](__f['__script']("Aimbot"))
elseif _G.FruitFinder then __f['__load'](__f['__script']("FruitFinder"))
elseif _G.AutoBounty then __f['__load'](__f['__script']("AutoBounty"))
elseif _G.Old then __f['__load'](__f['__script']("BloxFruitsOld"))
else
    getgenv().loader = __f['__game']()
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/6df239f7eb1c8bb019d8c87e92784540.lua"))()
end