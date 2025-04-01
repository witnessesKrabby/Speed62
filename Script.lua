local player = game.Players.LocalPlayer local playerGui = player:WaitForChild("PlayerGui") local character = player.Character or player.CharacterAdded:Wait() local humanoid = character:FindFirstChildOfClass("Humanoid")

local screenGui = Instance.new("ScreenGui") screenGui.Parent = playerGui

local backgroundFrame = Instance.new("Frame") backgroundFrame.Size = UDim2.new(0, 220, 0, 140) backgroundFrame.Position = UDim2.new(0.5, -110, 0.35, 0) backgroundFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2) backgroundFrame.Active = true backgroundFrame.Draggable = true backgroundFrame.Parent = screenGui

local bgCorner = Instance.new("UICorner") bgCorner.CornerRadius = UDim.new(0, 10) bgCorner.Parent = backgroundFrame

local textBox = Instance.new("TextBox") textBox.Size = UDim2.new(0, 200, 0, 50) textBox.Position = UDim2.new(0, 10, 0, 10) textBox.PlaceholderText = "Enter speed..." textBox.Parent = backgroundFrame

local textBoxCorner = Instance.new("UICorner") textBoxCorner.CornerRadius = UDim.new(0, 10) textBoxCorner.Parent = textBox

local button = Instance.new("TextButton") button.Size = UDim2.new(0, 200, 0, 50) button.Position = UDim2.new(0, 10, 0, 70) button.Text = "Submit" button.Parent = backgroundFrame

local buttonCorner = Instance.new("UICorner") buttonCorner.CornerRadius = UDim.new(0, 10) buttonCorner.Parent = button

local sound = Instance.new("Sound") sound.SoundId = "rbxassetid://4526034708" sound.Volume = 2 sound.Parent = game.SoundService

button.MouseButton1Click:Connect(function() local speed = tonumber(textBox.Text) if speed and humanoid then sound:Play() humanoid.WalkSpeed = speed end end)

