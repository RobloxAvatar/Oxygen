local Esp = {}

function Esp.DestroyLine()
    Line:Remove()
end

local camera = workspace.CurrentCamera

local useTeamCheck = _G.TeamCheck
local hideWhenNotLooking = true
local destroy = _G.Destroy

for _,v in pairs(game.Players:GetPlayers()) do
    if useTeamCheck == false or v.Team ~= game.Players.LocalPlayer.Team then
        if v ~= game.Players.LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
            local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Line = Drawing.new("Line")
            Line.Visible = true
            Line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
            Line.To = Vector2.new(vector.X, vector.Y)
            Line.Color = Color3.fromRGB(255, 80, 60)
            Line.Thickness = 2
            Line.Transparency = 1

            function script()
                game:GetService("RunService").RenderStepped:Connect(function(step)
                    
                    if useTeamCheck == false or v.Team ~= game.Players.LocalPlayer.Team then
                        if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                            local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                            if onscreen == true then
                                Line.To = Vector2.new(vector.X, vector.Y)
                                Line.Visible = true
                            else
                                if hideWhenNotLooking == true then
                                    Line.Visible = false
                                end
                            end
                        end
                    end
                end)
            end
            coroutine.wrap(script)()
        end
    end
    v.CharacterAdded:Connect(function()
        if useTeamCheck == false or v.Team ~= game.Players.LocalPlayer.Team then
            repeat wait() until v.Character ~= nil
            repeat wait() until v.Character:FindFirstChild("HumanoidRootPart") ~= nil
            local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Line = Drawing.new("Line")
            Line.Visible = true
            Line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
            Line.To = Vector2.new(vector.X, vector.Y)
            Line.Color = Color3.fromRGB(255, 80, 60)
            Line.Thickness = 2
            Line.Transparency = 1

            function script()
                game:GetService("RunService").RenderStepped:Connect(function(step)
                    if useTeamCheck == false or v.Team ~= game.Players.LocalPlayer.Team then
                        if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                            local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                            if onscreen == true then
                                Line.To = Vector2.new(vector.X, vector.Y)
                                Line.Visible = true
                            else
                                if hideWhenNotLooking == true then
                                    Line.Visible = false
                                end
                            end
                        end
                    end
                end)
            end
            coroutine.wrap(script)()
        end
    end)
end

game.Players.PlayerAdded:Connect(function(v)
    if useTeamCheck == false or v.Team ~= game.Players.LocalPlayer.Team then
        if v ~= game.Players.LocalPlayer and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
            local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Line = Drawing.new("Line")
            Line.Visible = true
            Line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
            Line.To = Vector2.new(vector.X, vector.Y)
            Line.Color = Color3.fromRGB(255, 80, 60)
            Line.Thickness = 2
            Line.Transparency = 1

            function script()
                game:GetService("RunService").RenderStepped:Connect(function(step)
                    if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                        local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                        if onscreen == true then
                            Line.To = Vector2.new(vector.X, vector.Y)
                            Line.Visible = true
                        else
                            if hideWhenNotLooking == true then
                                Line.Visible = false
                            end
                        end
                    end
                end)
            end
            coroutine.wrap(script)()
        end
    end
    v.CharacterAdded:Connect(function()
        if useTeamCheck == false or v.Team ~= game.Players.LocalPlayer.Team then
            repeat wait() until v.Character ~= nil
            repeat wait() until v.Character:FindFirstChild("HumanoidRootPart") ~= nil
            local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Line = Drawing.new("Line")
            Line.Visible = true
            Line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
            Line.To = Vector2.new(vector.X, vector.Y)
            Line.Color = Color3.fromRGB(255, 80, 60)
            Line.Thickness = 2
            Line.Transparency = 1

            function script()
                game:GetService("RunService").RenderStepped:Connect(function(step)
                    if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
                        local vector,onscreen = camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
                        if onscreen == true then
                            Line.To = Vector2.new(vector.X, vector.Y)
                            Line.Visible = true
                        else
                            if hideWhenNotLooking == true then
                                Line.Visible = false
                            end
                        end
                    end
                end)
            end
            coroutine.wrap(script)()
        end
    end)
end)

return Esp
