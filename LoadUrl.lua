local function Link()
    local Map = {
        ["Information"] = {
            Discord = "nil",
            YouTube = "nil"
        },
        [90823899207715] = {
            Url = "https://raw.githubusercontent.com/ProjectSHub01/Project-MarvenRiz/refs/heads/main/Arcane%20Piece.lua",
            Status = "🔵 [Beta]"
        }
    }
    return Map
end

_G.Map = Link()

if _G.Map[game.PlaceId] then
    pcall(function()
        loadstring(game:HttpGet(_G.Map[game.PlaceId].Url))()
    end)
else
    game.Players.LocalPlayer:Kick("Not Supported Map")
end
