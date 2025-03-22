_G.Map = {
  ["Information"] = {
    Discord = "nil",
    YouTube = "nil"
  },
  [90823899207715] = {
    Url = "your_github_link_here",
    Status = "🔵 [Beta]"
  }
}

if _G.Map[game.PlaceId] then
  pcall(function()
    loadstring(game:HttpGet(_G.Map[game.PlaceId].Url))()
  end
else
    game.Players.LocalPlayer:Kick("Not Supported Map")
end

return _G.Map
