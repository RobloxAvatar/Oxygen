local Oxygen = {}
Oxygen.Doors = {}

function Oxygen.MakeNotification(txt, time)
    local p = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxAvatar/JailWare/main/Notify.lua"))()
	p:MakeNotification({Name = "Oxygen", Content = txt, Time = time})
end

if game.PlaceId == 606849621 then
    for i, v in pairs(getgc(true)) do
        if type(v) == "table" then
            if rawget(v, "State") and rawget(v, "OpenFun") then
                table.insert(Oxygen.Doors, v)
            end
        elseif type(v) == "function" then
            if getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("LocalScript") then
                local con = getconstants(v)
                if table.find(con, "SequenceRequireState") then
                    Oxygen.OpenDoor = v
                end
            end
        end
    end
end

return Oxygen
